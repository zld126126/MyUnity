local debugger_stackInfo = nil
local coro_debugger = nil
local debugger_require = require
local debugger_exeLuaString = nil
local loadstring_ = nil
if (loadstring) then
    loadstring_ = loadstring
else
    loadstring_ = load
end
local ZZBase64 = {}
local LuaDebugTool_ = nil
if (LuaDebugTool) then
    LuaDebugTool_ = LuaDebugTool
elseif (CS and CS.LuaDebugTool) then
    LuaDebugTool_ = CS.LuaDebugTool;
end
local LuaDebugTool = LuaDebugTool_
local loadstring = loadstring_
local getinfo = debug.getinfo
local function createSocket()
    local base = _G
    local string = require("string")
    local math = require("math")
    local socket = require("socket.core")

    local _M = socket

    -----------------------------------------------------------------------------
    -- Exported auxiliar functions
    -----------------------------------------------------------------------------
    function _M.connect4(address, port, laddress, lport)
        return socket.connect(address, port, laddress, lport, "inet")
    end

    function _M.connect6(address, port, laddress, lport)
        return socket.connect(address, port, laddress, lport, "inet6")
    end

    if (not _M.connect) then
        function _M.connect(address, port, laddress, lport)
            local sock, err = socket.tcp()
            if not sock then return nil, err end
            if laddress then
                local res, err = sock:bind(laddress, lport, -1)
                if not res then return nil, err end
            end
            local res, err = sock:connect(address, port)
            if not res then return nil, err end
            return sock
        end
    end

    function _M.bind(host, port, backlog)
        if host == "*" then host = "0.0.0.0" end
        local addrinfo, err = socket.dns.getaddrinfo(host);
        if not addrinfo then return nil, err end
        local sock, res
        err = "no info on address"
        for i, alt in base.ipairs(addrinfo) do
            if alt.family == "inet" then
                sock, err = socket.tcp4()
            else
                sock, err = socket.tcp6()
            end
            if not sock then return nil, err end
            sock:setoption("reuseaddr", true)
            res, err = sock:bind(alt.addr, port)
            if not res then
                sock:close()
            else
                res, err = sock:listen(backlog)
                if not res then
                    sock:close()
                else
                    return sock
                end
            end
        end
        return nil, err
    end

    _M.try = _M.newtry()

    function _M.choose(table)
        return function(name, opt1, opt2)
            if base.type(name) ~= "string" then
                name, opt1, opt2 = "default", name, opt1
            end
            local f = table[name or "nil"]
            if not f then base.error("unknown key (" .. base.tostring(name) .. ")", 3)
            else return f(opt1, opt2) end
        end
    end

    -----------------------------------------------------------------------------
    -- Socket sources and sinks, conforming to LTN12
    -----------------------------------------------------------------------------
    -- create namespaces inside LuaSocket namespace
    local sourcet, sinkt = {}, {}
    _M.sourcet = sourcet
    _M.sinkt = sinkt

    _M.BLOCKSIZE = 2048

    sinkt["close-when-done"] = function(sock)
        return base.setmetatable({
            getfd = function() return sock:getfd() end,
            dirty = function() return sock:dirty() end
        }, {
            __call = function(self, chunk, err)
                if not chunk then
                    sock:close()
                    return 1
                else return sock:send(chunk) end
            end
        })
    end

    sinkt["keep-open"] = function(sock)
        return base.setmetatable({
            getfd = function() return sock:getfd() end,
            dirty = function() return sock:dirty() end
        }, {
            __call = function(self, chunk, err)
                if chunk then return sock:send(chunk)
                else return 1 end
            end
        })
    end

    sinkt["default"] = sinkt["keep-open"]

    _M.sink = _M.choose(sinkt)

    sourcet["by-length"] = function(sock, length)
        return base.setmetatable({
            getfd = function() return sock:getfd() end,
            dirty = function() return sock:dirty() end
        }, {
            __call = function()
                if length <= 0 then return nil end
                local size = math.min(socket.BLOCKSIZE, length)
                local chunk, err = sock:receive(size)
                if err then return nil, err end
                length = length - string.len(chunk)
                return chunk
            end
        })
    end

    sourcet["until-closed"] = function(sock)
        local done
        return base.setmetatable({
            getfd = function() return sock:getfd() end,
            dirty = function() return sock:dirty() end
        }, {
            __call = function()
                if done then return nil end
                local chunk, err, partial = sock:receive(socket.BLOCKSIZE)
                if not err then return chunk
                elseif err == "closed" then
                    sock:close()
                    done = 1
                    return partial
                else return nil, err end
            end
        })
    end
    sourcet["default"] = sourcet["until-closed"]
    _M.source = _M.choose(sourcet)
    return _M
end

local function createJson()
    local math = require('math')
    local string = require("string")
    local table = require("table")
    local object = nil
    -----------------------------------------------------------------------------
    -- Module declaration
    -----------------------------------------------------------------------------
    local json = {}              -- Public namespace
    local json_private = {}     -- Private namespace

    -- Public constants                                                            
    json.EMPTY_ARRAY = {}
    json.EMPTY_OBJECT = {}
    -- Public functions
    -- Private functions
    local decode_scanArray
    local decode_scanComment
    local decode_scanConstant
    local decode_scanNumber
    local decode_scanObject
    local decode_scanString
    local decode_scanWhitespace
    local encodeString
    local isArray
    local isEncodable

    -----------------------------------------------------------------------------
    -- PUBLIC FUNCTIONS
    -----------------------------------------------------------------------------
    --- Encodes an arbitrary Lua object / variable.
    -- @param v The Lua object / variable to be JSON encoded.
    -- @return String containing the JSON encoding in internal Lua string format (i.e. not unicode)
    function json.encode(v)
        -- Handle nil values
        if v == nil then
            return "null"
        end

        local vtype = type(v)

        -- Handle strings
        if vtype == 'string' then
            return "\"" .. json_private.encodeString(v) .. "\"" 	    -- Need to handle encoding in string
        end

        -- Handle booleans
        if vtype == 'number' or vtype == 'boolean' then
            return tostring(v)
        end

        -- Handle tables
        if vtype == 'table' then
            local rval = {}
            -- Consider arrays separately
            local bArray, maxCount = isArray(v)
            if bArray then
                for i = 1, maxCount do
                    table.insert(rval, json.encode(v[i]))
                end
            else	-- An object, not an array
                for i, j in pairs(v) do
                    if isEncodable(i) and isEncodable(j) then
                        table.insert(rval, "\"" .. json_private.encodeString(i) .. '\":' .. json.encode(j))
                    end
                end
            end
            if bArray then
                return '[' .. table.concat(rval, ',') .. ']'
            else
                return '{' .. table.concat(rval, ',') .. '}'
            end
        end

        -- Handle null values
        if vtype == 'function' and v == json.null then
            return 'null'
        end

        assert(false, 'encode attempt to encode unsupported type ' .. vtype .. ':' .. tostring(v))
    end


    --- Decodes a JSON string and returns the decoded value as a Lua data structure / value.
    -- @param s The string to scan.
    -- @param [startPos] Optional starting position where the JSON string is located. Defaults to 1.
    -- @param Lua object, number The object that was scanned, as a Lua table / string / number / boolean or nil,
    -- and the position of the first character after
    -- the scanned JSON object.
    function json.decode(s, startPos)
        startPos = startPos and startPos or 1
        startPos = decode_scanWhitespace(s, startPos)
        assert(startPos <= string.len(s), 'Unterminated JSON encoded object found at position in [' .. s .. ']')
        local curChar = string.sub(s, startPos, startPos)
        -- Object
        if curChar == '{' then
            return decode_scanObject(s, startPos)
        end
        -- Array
        if curChar == '[' then
            return decode_scanArray(s, startPos)
        end
        -- Number
        if string.find("+-0123456789.e", curChar, 1, true) then
            return decode_scanNumber(s, startPos)
        end
        -- String
        if curChar == "\"" or curChar == [[']] then
            return decode_scanString(s, startPos)
        end
        if string.sub(s, startPos, startPos + 1) == '/*' then
            return json.decode(s, decode_scanComment(s, startPos))
        end
        -- Otherwise, it must be a constant
        return decode_scanConstant(s, startPos)
    end

    --- The null function allows one to specify a null value in an associative array (which is otherwise
    -- discarded if you set the value with 'nil' in Lua. Simply set t = { first=json.null }
    function json.null()
        return json.null  -- so json.null() will also return null ;-)
    end
    -----------------------------------------------------------------------------
    -- Internal, PRIVATE functions.
    -- Following a Python-like convention, I have prefixed all these 'PRIVATE'
    -- functions with an underscore.
    -----------------------------------------------------------------------------
    --- Scans an array from JSON into a Lua object
    -- startPos begins at the start of the array.
    -- Returns the array and the next starting position
    -- @param s The string being scanned.
    -- @param startPos The starting position for the scan.
    -- @return table, int The scanned array as a table, and the position of the next character to scan.
    function decode_scanArray(s, startPos)
        local array = {} 	-- The return value
        local stringLen = string.len(s)
        assert(string.sub(s, startPos, startPos) == '[', 'decode_scanArray called but array does not start at position ' .. startPos .. ' in string:\n' .. s)
        startPos = startPos + 1
        -- Infinite loop for array elements
            repeat
            startPos = decode_scanWhitespace(s, startPos)
            assert(startPos <= stringLen, 'JSON String ended unexpectedly scanning array.')
            local curChar = string.sub(s, startPos, startPos)
            if (curChar == ']') then
                return array, startPos + 1
            end
            if (curChar == ',') then
                startPos = decode_scanWhitespace(s, startPos + 1)
            end
            assert(startPos <= stringLen, 'JSON String ended unexpectedly scanning array.')
            object, startPos = json.decode(s, startPos)
            table.insert(array, object)
        until false
    end

    --- Scans a comment and discards the comment.
    -- Returns the position of the next character following the comment.
    -- @param string s The JSON string to scan.
    -- @param int startPos The starting position of the comment
    function decode_scanComment(s, startPos)
        assert(string.sub(s, startPos, startPos + 1) == '/*', "decode_scanComment called but comment does not start at position " .. startPos)
        local endPos = string.find(s, '*/', startPos + 2)
        assert(endPos ~= nil, "Unterminated comment in string at " .. startPos)
        return endPos + 2
    end

    --- Scans for given constants: true, false or null
    -- Returns the appropriate Lua type, and the position of the next character to read.
    -- @param s The string being scanned.
    -- @param startPos The position in the string at which to start scanning.
    -- @return object, int The object (true, false or nil) and the position at which the next character should be 
    -- scanned.
    function decode_scanConstant(s, startPos)
        local consts = {["true"] = true, ["false"] = false, ["null"] = nil }
        local constNames = { "true", "false", "null" }

        for i, k in pairs(constNames) do
            if string.sub(s, startPos, startPos + string.len(k) - 1) == k then
                return consts[k], startPos + string.len(k)
            end
        end
        assert(nil, 'Failed to scan constant from string ' .. s .. ' at starting position ' .. startPos)
    end

    --- Scans a number from the JSON encoded string.
    -- (in fact, also is able to scan numeric +- eqns, which is not
    -- in the JSON spec.)
    -- Returns the number, and the position of the next character
    -- after the number.
    -- @param s The string being scanned.
    -- @param startPos The position at which to start scanning.
    -- @return number, int The extracted number and the position of the next character to scan.
    function decode_scanNumber(s, startPos)
        local endPos = startPos + 1
        local stringLen = string.len(s)
        local acceptableChars = "+-0123456789.e"
        while (string.find(acceptableChars, string.sub(s, endPos, endPos), 1, true)
        and endPos <= stringLen
        ) do
            endPos = endPos + 1
        end
        local stringValue = 'return ' .. string.sub(s, startPos, endPos - 1)
        local stringEval = loadstring(stringValue)
        assert(stringEval, 'Failed to scan number [ ' .. stringValue .. '] in JSON string at position ' .. startPos .. ' : ' .. endPos)
        return stringEval(), endPos
    end

    --- Scans a JSON object into a Lua object.
    -- startPos begins at the start of the object.
    -- Returns the object and the next starting position.
    -- @param s The string being scanned.
    -- @param startPos The starting position of the scan.
    -- @return table, int The scanned object as a table and the position of the next character to scan.
    function decode_scanObject(s, startPos)
        local object = {}
        local stringLen = string.len(s)
        local key, value
        assert(string.sub(s, startPos, startPos) == '{', 'decode_scanObject called but object does not start at position ' .. startPos .. ' in string:\n' .. s)
        startPos = startPos + 1
        repeat
            startPos = decode_scanWhitespace(s, startPos)
            assert(startPos <= stringLen, 'JSON string ended unexpectedly while scanning object.')
            local curChar = string.sub(s, startPos, startPos)
            if (curChar == '}') then
                return object, startPos + 1
            end
            if (curChar == ',') then
                startPos = decode_scanWhitespace(s, startPos + 1)
            end
            assert(startPos <= stringLen, 'JSON string ended unexpectedly scanning object.')
            -- Scan the key
            key, startPos = json.decode(s, startPos)
            assert(startPos <= stringLen, 'JSON string ended unexpectedly searching for value of key ' .. key)
            startPos = decode_scanWhitespace(s, startPos)
            assert(startPos <= stringLen, 'JSON string ended unexpectedly searching for value of key ' .. key)
            assert(string.sub(s, startPos, startPos) == ':', 'JSON object key-value assignment mal-formed at ' .. startPos)
            startPos = decode_scanWhitespace(s, startPos + 1)
            assert(startPos <= stringLen, 'JSON string ended unexpectedly searching for value of key ' .. key)
            value, startPos = json.decode(s, startPos)
            object[key] = value
        until false 	-- infinite loop while key-value pairs are found
    end

    -- START SoniEx2
    -- Initialize some things used by decode_scanString
    -- You know, for efficiency
    local escapeSequences = {
        ["\\t"] = "\t",
        ["\\f"] = "\f",
        ["\\r"] = "\r",
        ["\\n"] = "\n",
        ["\\b"] = ""
    }
    setmetatable(escapeSequences, { __index = function(t, k)
        -- skip "\" aka strip escape
        return string.sub(k, 2)
    end })
    -- END SoniEx2
    --- Scans a JSON string from the opening inverted comma or single quote to the
    -- end of the string.
    -- Returns the string extracted as a Lua string,
    -- and the position of the next non-string character
    -- (after the closing inverted comma or single quote).
    -- @param s The string being scanned.
    -- @param startPos The starting position of the scan.
    -- @return string, int The extracted string as a Lua string, and the next character to parse.
    function decode_scanString(s, startPos)
        assert(startPos, 'decode_scanString(..) called without start position')
        local startChar = string.sub(s, startPos, startPos)
        -- START SoniEx2
        -- PS: I don't think single quotes are valid JSON
        assert(startChar == "\"" or startChar == [[']], 'decode_scanString called for a non-string')
        --assert(startPos, "String decoding failed: missing closing " .. startChar .. " for string at position " .. oldStart)
        local t = {}
        local i, j = startPos, startPos
        while string.find(s, startChar, j + 1) ~= j + 1 do
            local oldj = j
            i, j = string.find(s, "\\.", j + 1)
            local x, y = string.find(s, startChar, oldj + 1)
            if not i or x < i then
                i, j = x, y - 1
            end
            table.insert(t, string.sub(s, oldj + 1, i - 1))
            if string.sub(s, i, j) == "\\u" then
                local a = string.sub(s, j + 1, j + 4)
                j = j + 4
                local n = tonumber(a, 16)
                assert(n, "String decoding failed: bad Unicode escape " .. a .. " at position " .. i .. " : " .. j)
                -- math.floor(x/2^y) == lazy right shift
                -- a % 2^b == bitwise_and(a, (2^b)-1)
                -- 64 = 2^6
                -- 4096 = 2^12 (or 2^6 * 2^6)
                local x
                if n < 128 then
                    x = string.char(n % 128)
                elseif n < 2048 then
                    -- [110x xxxx] [10xx xxxx]
                    x = string.char(192 + (math.floor(n / 64) % 32), 128 + (n % 64))
                else
                    -- [1110 xxxx] [10xx xxxx] [10xx xxxx]
                    x = string.char(224 + (math.floor(n / 4096) % 16), 128 + (math.floor(n / 64) % 64), 128 + (n % 64))
                end
                table.insert(t, x)
            else
                table.insert(t, escapeSequences[string.sub(s, i, j)])
            end
        end
        table.insert(t, string.sub(j, j + 1))
        assert(string.find(s, startChar, j + 1), "String decoding failed: missing closing " .. startChar .. " at position " .. j .. "(for string at position " .. startPos .. ")")
        return table.concat(t, ""), j + 2
        -- END SoniEx2
    end

    --- Scans a JSON string skipping all whitespace from the current start position.
    -- Returns the position of the first non-whitespace character, or nil if the whole end of string is reached.
    -- @param s The string being scanned
    -- @param startPos The starting position where we should begin removing whitespace.
    -- @return int The first position where non-whitespace was encountered, or string.len(s)+1 if the end of string
    -- was reached.
    function decode_scanWhitespace(s, startPos)
        local whitespace = " \n\r\t"
        local stringLen = string.len(s)
        while (string.find(whitespace, string.sub(s, startPos, startPos), 1, true) and startPos <= stringLen) do
            startPos = startPos + 1
        end
        return startPos
    end

    --- Encodes a string to be JSON-compatible.
    -- This just involves back-quoting inverted commas, back-quotes and newlines, I think ;-)
    -- @param s The string to return as a JSON encoded (i.e. backquoted string)
    -- @return The string appropriately escaped.
    local escapeList = {
        ["\""] = '\\\"',
        ['\\'] = '\\\\',
        ['/'] = '\\/',
        [''] = '\\b',
        ['\f'] = '\\f',
        ['\n'] = '\\n',
        ['\r'] = '\\r',
        ['\t'] = '\\t'
    }

    function json_private.encodeString(s)
        local s = tostring(s)
        return s:gsub(".", function(c) return escapeList[c] end)  -- SoniEx2: 5.0 compat
    end

    -- Determines whether the given Lua type is an array or a table / dictionary.
    -- We consider any table an array if it has indexes 1..n for its n items, and no
    -- other data in the table.
    -- I think this method is currently a little 'flaky', but can't think of a good way around it yet...
    -- @param t The table to evaluate as an array
    -- @return boolean, number True if the table can be represented as an array, false otherwise. If true,
    -- the second returned value is the maximum
    -- number of indexed elements in the array. 
    function isArray(t)
        -- Next we count all the elements, ensuring that any non-indexed elements are not-encodable 
        -- (with the possible exception of 'n')
        if (t == json.EMPTY_ARRAY) then return true, 0 end
        if (t == json.EMPTY_OBJECT) then return false end

        local maxIndex = 0
        for k, v in pairs(t) do
            if (type(k) == 'number' and math.floor(k) == k and 1 <= k) then	-- k,v is an indexed pair
                if (not isEncodable(v)) then return false end	-- All array elements must be encodable
                maxIndex = math.max(maxIndex, k)
            else
                if (k == 'n') then
                    if v ~= (t.n or #t) then return false end  -- False if n does not hold the number of elements

                else -- Else of (k=='n')
                    if isEncodable(v) then return false end
                end  -- End of (k~='n')
            end  -- End of k,v not an indexed pair
        end   -- End of loop across all pairs
        return true, maxIndex
    end

    --- Determines whether the given Lua object / table / variable can be JSON encoded. The only
    -- types that are JSON encodable are: string, boolean, number, nil, table and json.null.
    -- In this implementation, all other types are ignored.
    -- @param o The object to examine.
    -- @return boolean True if the object should be JSON encoded, false if it should be ignored.
    function isEncodable(o)
        local t = type(o)
        return (t == 'string' or t == 'boolean' or t == 'number' or t == 'nil' or t == 'table') or
        (t == 'function' and o == json.null)
    end

    return json
end
local debugger_print = print
local debug_server = nil
local breakInfoSocket = nil
local json = createJson()
local LuaDebugger = {
    fileMaps = {},
    Run = true, --表示正常运行只检测断点
    StepIn = false,
    StepInLevel = 0,
    StepNext = false,
    StepNextLevel = 0,
    StepOut = false,
    breakInfos = {},
    runTimeType = nil,
    isHook = true,
    pathCachePaths = {},
    isProntToConsole = 1,
    printType = 1,
    isDebugPrint = true,
    hookType = "lrc",
    currentFileName = "",
    currentTempFunc = nil,
    splitFilePaths = {}, --分割字符串缓存
    DebugLuaFie = "",
    version = "1.0.4",

    -- luajit only
    stepNextFun = nil,
    runLineCount = 0,
}

LuaDebugger.event = {
    S2C_SetBreakPoints = 1,
    C2S_SetBreakPoints = 2,
    S2C_RUN = 3,
    C2S_HITBreakPoint = 4,
    S2C_ReqVar = 5,
    C2S_ReqVar = 6,
    S2C_NextRequest = 7, --单步跳过请求
    C2S_NextResponse = 8, --单步跳过反馈
    C2S_NextResponseOver = 9, -- 单步跳过 结束 没有下一步
    S2C_StepInRequest = 10, --单步跳入
    C2S_StepInResponse = 11,
    S2C_StepOutRequest = 12, --单步跳出
    C2S_StepOutResponse = 13, --单步跳出返回
    C2S_LuaPrint = 14, --打印
    S2C_LoadLuaScript = 16,
    C2S_SetSocketName = 17,
    C2S_LoadLuaScript = 18,
    C2S_DebugXpCall = 20,
    S2C_DebugClose = 21
}

function print1(...)
    if ((LuaDebugger.printType == 1 or LuaDebugger.printType == 3) or
    (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 3)) then
        debugger_print(...)
    end
    if ((LuaDebugger.printType == 1 or LuaDebugger.printType == 2) or
    (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 2)) then
        if (debug_server) then
            local arg = { ... }
            local str = ""
            if (#arg == 0) then
                arg = { "nil" }
            end
            for k, v in pairs(arg) do
                str = str .. tostring(v) .. "\t"
            end
            local sendMsg = {
                event = LuaDebugger.event.C2S_LuaPrint,
                data = { msg = ZZBase64.encode(str), type = 1 }
            }
            local sendStr = json.encode(sendMsg)
            debug_server:send(sendStr .. "__debugger_k0204__")
        end
    end
end

print = print1

function luaIdePrintWarn(...)
    if (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 3) then
        debugger_print(...)
    end
    if (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 2) then
        if (debug_server) then
            local arg = { ... }
            local str = ""
            if (#arg == 0) then
                arg = { "nil" }
            end
            for k, v in pairs(arg) do
                str = str .. tostring(v) .. "\t"
            end
            local sendMsg = {
                event = LuaDebugger.event.C2S_LuaPrint,
                data = { msg = ZZBase64.encode(str), type = 2 }
            }
            local sendStr = json.encode(sendMsg)
            debug_server:send(sendStr .. "__debugger_k0204__")
        end
    end
end

function luaIdePrintErr(...)
    if (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 3) then
        debugger_print(...)
    end
    if (LuaDebugger.isProntToConsole == 1 or LuaDebugger.isProntToConsole == 2) then
        if (debug_server) then
            local arg = { ... }
            local str = ""
            if (#arg == 0) then
                arg = { "nil" }
            end
            for k, v in pairs(arg) do
                str = str .. tostring(v) .. "\t"
            end
            local sendMsg = {
                event = LuaDebugger.event.C2S_LuaPrint,
                data = { msg = ZZBase64.encode(str), type = 3 }
            }
            local sendStr = json.encode(sendMsg)
            debug_server:send(sendStr .. "__debugger_k0204__")
        end
    end
end

----=============================工具方法=============================================
local debug_hook = nil

local function debugger_strSplit(input, delimiter)
    input = tostring(input)
    delimiter = tostring(delimiter)
    if (delimiter == '') then return false end
    local pos, arr = 0, {}
    -- for each divider found
    for st, sp in function() return string.find(input, delimiter, pos, true) end do
        table.insert(arr, string.sub(input, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(input, pos))
    return arr
end

local function debugger_strTrim(input)
    input = string.gsub(input, "^[ \t\n\r]+", "")
    return string.gsub(input, "[ \t\n\r]+$", "")
end

local function debugger_dump(value, desciption, nesting)
    if type(nesting) ~= "number" then nesting = 3 end
    local lookupTable = {}
    local result = {}
    local function _v(v)
        if type(v) == "string" then
            v = "\"" .. v .. "\""
        end
        return tostring(v)
    end
    local traceback = debugger_strSplit(debug.traceback("", 2), "\n")
    print1("dump from: " .. debugger_strTrim(traceback[3]))
    local function _dump(value, desciption, indent, nest, keylen)
        desciption = desciption or "<var>"
        spc = ""
        if type(keylen) == "number" then
            spc = string.rep(" ", keylen - string.len(_v(desciption)))
        end
        if type(value) ~= "table" then
            result[#result + 1] = string.format("%s%s%s = %s", indent, _v(desciption), spc, _v(value))
        elseif lookupTable[value] then
            result[#result + 1] = string.format("%s%s%s = *REF*", indent, desciption, spc)
        else
            lookupTable[value] = true
            if nest > nesting then
                result[#result + 1] = string.format("%s%s = *MAX NESTING*", indent, desciption)
            else
                result[#result + 1] = string.format("%s%s = {", indent, _v(desciption))
                local indent2 = indent .. "    "
                local keys = {}
                local keylen = 0
                local values = {}
                for k, v in pairs(value) do
                    keys[#keys + 1] = k
                    local vk = _v(k)
                    local vkl = string.len(vk)
                    if vkl > keylen then keylen = vkl end
                    values[k] = v
                end
                table.sort(keys, function(a, b)
                    if type(a) == "number" and type(b) == "number" then
                        return a < b
                    else
                        return tostring(a) < tostring(b)
                    end
                end)
                for i, k in ipairs(keys) do
                    _dump(values[k], k, indent2, nest + 1, keylen)
                end
                result[#result + 1] = string.format("%s}", indent)
            end
        end
    end
    _dump(value, desciption, "- ", 1)
    for i, line in ipairs(result) do
        print1(line)
    end
end

local function debugger_setVarInfo(name, value)
    local vt = type(value)
    local valueStr = ""
    if (vt ~= "table") then
        valueStr = tostring(value)
        valueStr = ZZBase64.encode(valueStr)
    else
        -- valueStr =  topointer(value)
    end
    local valueInfo = {
        name = name,
        valueType = vt,
        valueStr = valueStr
    }
    return valueInfo;
end

local function debugger_getvalue(f)
    local i = 1
    local locals = {}
    -- get locals
    while true do
        local name, value = debug.getlocal(f, i)
        if not name then break end
        if (name ~= "(*temporary)") then
            locals[name] = value
        end
        i = i + 1
    end
    local func = getinfo(f, "f").func
    i = 1
    local ups = {}
    while func do -- check for func as it may be nil for tail calls
        local name, value = debug.getupvalue(func, i)
        if not name then break end
        ups[name] = value
        i = i + 1
    end
    return { locals = locals, ups = ups }
end

--获取堆栈
debugger_stackInfo = function(ignoreCount, event)
    local datas = {}
    local stack = {}
    local varInfos = {}
    local funcs = {}
    local index = 0;
    for i = ignoreCount, 100 do
        local source = getinfo(i)
        local isadd = true
        if (i == ignoreCount) then
            local file = source.source
            if (file:find(LuaDebugger.DebugLuaFie)) then
                return
            end
            if (file == "=[C]") then
                isadd = false
            end
        end
        if not source then
            break;
        end
        if (isadd) then
            local file = source.source
            if file:find("@") == 1 then
                file = file:sub(2);
                if not file:find("/") then
                    file = file:gsub("%.", "/")
                end
            end
            local info =            {
                src = file,
                scoreName = source.name,
                currentline = source.currentline,
                linedefined = source.linedefined,
                what = source.what,
                nameWhat = source.namewhat
            }
            index = i
            local vars = debugger_getvalue(i + 1)
            table.insert(stack, info)
            table.insert(varInfos, vars)
            table.insert(funcs, source.func)
        end
        if source.what == 'main' then break end
    end
    local stackInfo = { stack = stack, vars = varInfos, funcs = funcs }
    local data = nil
    if not jit then
        data = {
            stack = stackInfo.stack,
            vars = stackInfo.vars,
            funcs = stackInfo.funcs,
            event = event,
            funcsLength = #stackInfo.funcs
        }
        LuaDebugger.currentTempFunc = data.funcs[1]
    else
        data = {
            stack = stackInfo.stack,
            vars = stackInfo.vars,
            funcs = stackInfo.funcs,
            event = event
        }
    end
    return data
end
--==============================工具方法 end======================================================
--===========================断点信息==================================================
local debugger_setBreak = nil

local function debugger_receiveDebugBreakInfo()
    if (breakInfoSocket) then
        local msg, status = breakInfoSocket:receive()
        if (msg) then
            local netData = json.decode(msg)
            if netData.event == LuaDebugger.event.S2C_SetBreakPoints then
                debugger_setBreak(netData.data)
            elseif netData.event == LuaDebugger.event.S2C_LoadLuaScript then

                debugger_exeLuaString(netData.data, false)
            end
        end
    end
end

local function splitFilePath(path)
    if not jit then
        if (LuaDebugger.splitFilePaths[path]) then
            return LuaDebugger.splitFilePaths[path]
        end
    end
    local pos, arr = 0, {}
    -- for each divider found
    for st, sp in function() return string.find(path, '/', pos, true) end do
        table.insert(arr, string.sub(path, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(path, pos))
    if not jit then
        LuaDebugger.splitFilePaths[path] = arr
    end
    return arr
end

debugger_setBreak = function(datas)
    local breakInfos = LuaDebugger.breakInfos
    for i, data in ipairs(datas) do
        local breakInfo = breakInfos[data.fileName]
        if (not breakInfo) then
            breakInfos[data.fileName] = {}
            breakInfo = breakInfos[data.fileName]
        end
        if (not data.lines or #data.lines == 0) then
            breakInfo[data.serverPath] = nil
        else
            local lineInfos = {}
            for li, line in ipairs(data.lines) do
                lineInfos[line] = true
            end
            breakInfo[data.serverPath] = {
                pathNames = splitFilePath(data.serverPath),
                lines = lineInfos,
                hitConditions = data.hitConditions,
                countConditions = data.countConditions
            }
        end
        local count = 0
        for i, linesInfo in pairs(breakInfo) do
            count = count + 1
        end
        if (count == 0) then
            breakInfos[data.fileName] = nil
        end
    end
    -- debugger_dump(breakInfos, "breakInfos", 6)
    --检查是否需要断点
    local isHook = false
    for k, v in pairs(breakInfos) do
        isHook = true
        break
    end
    --这样做的原因是为了最大限度的使手机调试更加流畅 注意这里会连续的进行n次
    if (isHook) then
        if (not LuaDebugger.isHook) then
            debug.sethook(debug_hook, "lrc")
        end
        LuaDebugger.isHook = true

    else

        if (LuaDebugger.isHook) then
            debug.sethook()
        end
        LuaDebugger.isHook = false
    end
end

local function debugger_checkFileIsBreak(fileName)
    return LuaDebugger.breakInfos[fileName]
end

local function debugger_checkIsBreak(fileName, line)
    local breakInfo = LuaDebugger.breakInfos[fileName]
    if (breakInfo) then
        local ischeck = false
        for k, lineInfo in pairs(breakInfo) do
            local lines = lineInfo.lines
            if (lines and lines[line]) then
                ischeck = true
                break
            end
        end
        if (not ischeck) then return end
        --并且在断点中
        local info = getinfo(3)
        local source = info.source
        source = source:gsub("\\", "/")
        if source:find("@") == 1 then
            source = source:sub(2);
            if not source:find("/") then
                source = source:gsub("%.", "/")
            end
        end
        local index = source:find("%.lua")
        if not index then
            source = source .. ".lua"
        end
        local hitPathNames = splitFilePath(source)
        local hitCounts = {}
        local flineInfo
        local hitCondition = false
        local hasCondition = false
        local hasCountCondition = false
        local hitCountCondition = false
        for k, lineInfo in pairs(breakInfo) do
            local lines = lineInfo.lines
            local pathNames = lineInfo.pathNames
            if (lines and lines[line]) then
                flineInfo = lineInfo
                -- debugger_dump(lineInfo, "lineInfo", 6)
                -- condition
                if lineInfo.hitConditions and lineInfo.hitConditions[tostring(line)] then
                    hasCondition = true
                    local condition = lineInfo.hitConditions[tostring(line)]
                    -- debugger_dump(condition, "condition", 6)
                    local stackInfo = debugger_stackInfo(4, nil)
                    local doCondition = function()
                        local envs = { _G = _G }
                        local vars = stackInfo.vars[1]
                        local locals = vars.locals;
                        local ups = vars.ups
                        for k, v in pairs(ups) do
                            envs[k] = v
                        end
                        for k, v in pairs(locals) do
                            envs[k] = v
                        end
                        setmetatable(envs, { __index = _G })
                        local funStr = "return " .. condition
                        local fun = loadstring(funStr)
                        setfenv(fun, envs)
                        return fun()
                    end
                    local status, msg = xpcall(doCondition, function(error)
                    end)
                    hitCondition = status and msg
                end
                if hitCondition or not hasCondition then
                    --判断路径
                    hitCounts[k] = 0
                    local hitPathNamesCount = #hitPathNames
                    local pathNamesCount = #pathNames
                    while (true) do
                        if (pathNames[pathNamesCount] ~= hitPathNames[hitPathNamesCount]) then
                            break
                        else
                            hitCounts[k] = hitCounts[k] + 1
                        end
                        pathNamesCount = pathNamesCount - 1
                        hitPathNamesCount = hitPathNamesCount - 1
                        if (pathNamesCount <= 0 or hitPathNamesCount <= 0) then
                            break
                        end
                    end
                end
                break
            end
        end
        local hitFieName = ""
        local maxCount = 0
        for k, v in pairs(hitCounts) do
            if (v > maxCount) then
                maxCount = v
                hitFieName = k
            end
        end
        if (#hitPathNames == 1 or (#hitPathNames > 1 and maxCount > 1)) then
            if (hitFieName ~= "" and flineInfo) then
                -- debugger_dump(flineInfo, "flineInfo", 6)
                if flineInfo.hitCount == nil then flineInfo.hitCount = {} end
                if flineInfo.hitCount[line] == nil then flineInfo.hitCount[line] = 0 end
                local currentCount = flineInfo.hitCount[line]
                if flineInfo.countConditions and flineInfo.countConditions[tostring(line)] then
                    hasCountCondition = true
                    local targetCount = tonumber(flineInfo.countConditions[tostring(line)])
                    hitCountCondition = currentCount == targetCount - 1
                end
                flineInfo.hitCount[line] = currentCount + 1
                if hitCondition or hitCountCondition or not hasCountCondition then
                    return hitFieName
                end
            end
        end
    end
    return false
end
--=====================================断点信息 end ----------------------------------------------
local controller_host = "127.0.0.1"
local controller_port = 7003

local function debugger_sendMsg(serverSocket, eventName, data)
    local sendMsg = {
        event = eventName,
        data = data
    }
    local sendStr = json.encode(sendMsg)
    serverSocket:send(sendStr .. "__debugger_k0204__")
end

--执行lua字符串
debugger_exeLuaString = function(data, isBreakPoint)
    local function loadScript()
        local luastr = data.luastr
        if (isBreakPoint) then
            local currentTabble = { _G = _G }
            local frameId = data.frameId
            frameId = frameId + 1
            local func = LuaDebugger.currentDebuggerData.funcs[frameId];
            local vars = LuaDebugger.currentDebuggerData.vars[frameId]
            local locals = vars.locals;
            local ups = vars.ups
            for k, v in pairs(ups) do
                currentTabble[k] = v
            end
            for k, v in pairs(locals) do
                currentTabble[k] = v
            end
            setmetatable(currentTabble, { __index = _G })
            local fun = loadstring(luastr)
            setfenv(fun, currentTabble)
            fun()
        else
            local fun = loadstring(luastr)
            fun()
        end
    end
    local status, msg = xpcall(loadScript, function(error)
        print(error)
    end)
    if (status) then
        debugger_sendMsg(debug_server, LuaDebugger.event.C2S_LoadLuaScript, { msg = "执行代码成功" })
        if (isBreakPoint) then
            debugger_sendMsg(debug_server, LuaDebugger.event.C2S_HITBreakPoint, LuaDebugger.currentDebuggerData)
        end
    else
        debugger_sendMsg(debug_server, LuaDebugger.event.C2S_LoadLuaScript, { msg = "加载代码失败" })
    end
end

local function getLuaFileName(str)
    local pos = 0
    local fileName = "";
    -- for each divider found
    for st, sp in function() return string.find(str, '/', pos, true) end do
        pos = sp + 1
    end
    fileName = string.sub(str, pos)
    return fileName;
end

local function getSource(source)
    if (LuaDebugger.pathCachePaths[source]) then
        return LuaDebugger.pathCachePaths[source]
    end
    local file = source
    file = file:gsub("\\", "/")
    if file:find("@") == 1 then
        file = file:sub(2);
        if not file:find("/") then
            file = file:gsub("%.", "/")
        end
    end
    local index = file:find("%.lua")
    if not index then
        file = file .. ".lua"
    end
    file = getLuaFileName(file)
    LuaDebugger.pathCachePaths[source] = file
    return file;
end

local function debugger_GeVarInfoBytUserData(server, var, variablesReference, debugSpeedIndex)
    local fileds = LuaDebugTool.getUserDataInfo(var)
    local varInfos = {}
    if (tolua) then
        local luavars = tolua.getpeer(var)
        if (luavars) then
            for k, v in pairs(luavars) do
                local vinfo = debugger_setVarInfo(k, v)
                table.insert(varInfos, vinfo)
            end
        end
    end

    --c# vars
    for i = 1, fileds.Count do
        local filed = fileds[i - 1]
        local valueInfo = {
            name = filed.name,
            valueType = filed.valueType,
            valueStr = ZZBase64.encode(filed.valueStr),
            isValue = filed.isValue
        }
        table.insert(varInfos, valueInfo)
    end

    debugger_sendMsg(server, LuaDebugger.event.C2S_ReqVar, {
        variablesReference = variablesReference,
        debugSpeedIndex = debugSpeedIndex,
        vars = varInfos,
        isComplete = 1
    })
end

--获取lua 变量的方法
local function debugger_getBreakVar(body, server)
    local variablesReference = body.variablesReference
    local debugSpeedIndex = body.debugSpeedIndex
    local vinfos = {}
    local function exe()
        local frameId = body.frameId;
        local type_ = body.type;
        local keys = body.keys;
        --找到对应的var
        local tvars = nil
        if (type_ == 1) then
            tvars = LuaDebugger.currentDebuggerData.vars[frameId + 1]
            tvars = tvars.locals
        elseif (type_ == 2) then
            tvars = LuaDebugger.currentDebuggerData.vars[frameId + 1]
            tvars = tvars.ups
        elseif (type_ == 3) then
            tvars = _G
        end
        -- FIX(20211115)：对象新增__todebug函数以输出调试内容（protobuf字段显示问题）
        local vars = {}
        for k, v in pairs(tvars) do
            if type(v) == "table" then
                -- FIX(20211214)：loop in gettable
                xpcall(function()
                    if v.__todebug then
                        vars[k] = v:__todebug()
                    else
                        vars[k] = v
                    end
                end, function()
                    vars[k] = v
                end)
            else
                vars[k] = v
            end
        end
        --特殊处理下
        for i, v in ipairs(keys) do
            local start_m = string.sub(v, 1, 1)
            if (start_m == "[") then
                local len = string.len(v)
                local end_m = string.sub(v, len, len)
                if (end_m == "]") then
                    v = string.sub(v, 2, len - 1);
                end
                vars = vars[v]
            else
                vars = vars[v]
            end
            if (type(vars) == "userdata" and tolua ~= nil and LuaDebugTool == nil) then
                vars = tolua.getpeer(vars)
            end
            if (vars == nil) then
                break;
            end
        end
        local varType = type(vars)
        if (varType == "userdata") then
            if (LuaDebugTool) then
                debugger_GeVarInfoBytUserData(server, vars, variablesReference, debugSpeedIndex)
                return;
            elseif (tolua == nil) then
                debugger_sendMsg(server, LuaDebugger.event.C2S_ReqVar, {
                    variablesReference = variablesReference,
                    debugSpeedIndex = debugSpeedIndex,
                    vars = vinfos,
                    isComplete = 1
                })
                return
            end
        end
        local count = 0;
        if (vars) then
            for k, v in pairs(vars) do
                local vinfo = debugger_setVarInfo(k, v)
                table.insert(vinfos, vinfo)
                if (#vinfos > 10) then
                    debugger_sendMsg(server,
                    LuaDebugger.event.C2S_ReqVar,
                    {
                        variablesReference = variablesReference,
                        debugSpeedIndex = debugSpeedIndex,
                        vars = vinfos,
                        isComplete = 0
                    })
                    vinfos = {}
                end
            end
        end
        debugger_sendMsg(server, LuaDebugger.event.C2S_ReqVar, {
            variablesReference = variablesReference,
            debugSpeedIndex = debugSpeedIndex,
            vars = vinfos,
            isComplete = 1
        })
    end
    xpcall(exe, function(error)
        print("debugger_getBreakVar error: \n")
        print(error)
        print(debug.traceback("", 2))
        debugger_sendMsg(server,
        LuaDebugger.event.C2S_ReqVar,
        {
            variablesReference = variablesReference,
            debugSpeedIndex = debugSpeedIndex,
            vars = {
                {
                    name = "error",
                    valueType = "string",
                    valueStr = ZZBase64.encode("Can not get value."),
                    isValue = false
                }
            },
            isComplete = 1
        })
    end)
end

local function ResetDebugInfo()
    LuaDebugger.Run = false
    LuaDebugger.StepIn = false
    LuaDebugger.StepNext = false
    LuaDebugger.StepOut = false
    if not jit then
        LuaDebugger.StepNextLevel = 0
    end
end

local function debugger_loop(server)
    server = debug_server
    --命令
    local command
    local eval_env = {}
    local arg
    while true do
        local line, status = server:receive()
        if (status == "closed") then
            debug.sethook()
            coroutine.yield()
        end
        if (line) then
            local netData = json.decode(line)
            local event = netData.event;
            local body = netData.data;
            if (event == LuaDebugger.event.S2C_DebugClose) then
                debug.sethook()
                coroutine.yield()
            elseif event == LuaDebugger.event.S2C_SetBreakPoints then
                --设置断点信息
                local function setB()
                    debugger_setBreak(body)
                end
                xpcall(setB, function(error)
                    print(error)
                end)
            elseif event == LuaDebugger.event.S2C_RUN then
                LuaDebugger.runTimeType = body.runTimeType
                LuaDebugger.isProntToConsole = body.isProntToConsole
                LuaDebugger.printType = body.printType
                ResetDebugInfo()
                LuaDebugger.Run = true
                local data = coroutine.yield()
                LuaDebugger.currentDebuggerData = data;
                debugger_sendMsg(server, data.event, {
                    stack = data.stack
                })
            elseif event == LuaDebugger.event.S2C_ReqVar then
                --请求数据信息
                debugger_getBreakVar(body, server)
            elseif event == LuaDebugger.event.S2C_NextRequest then
                ResetDebugInfo()
                LuaDebugger.StepNext = true
                if not jit then
                    LuaDebugger.StepNextLevel = 0;
                end

                --设置当前文件名和当前行数
                local data = coroutine.yield()
                --重置调试信息
                LuaDebugger.currentDebuggerData = data;
                debugger_sendMsg(server, data.event, {
                    stack = data.stack
                })
            elseif (event == LuaDebugger.event.S2C_StepInRequest) then
                --单步跳入
                ResetDebugInfo()
                LuaDebugger.StepIn = true
                local data = coroutine.yield()
                --重置调试信息
                LuaDebugger.currentDebuggerData = data;
                debugger_sendMsg(server, data.event, {
                    stack = data.stack,
                    eventType = data.eventType
                })
            elseif (event == LuaDebugger.event.S2C_StepOutRequest) then
                --单步跳出
                ResetDebugInfo()
                LuaDebugger.StepOut = true
                local data = coroutine.yield()
                --重置调试信息
                LuaDebugger.currentDebuggerData = data;
                debugger_sendMsg(server, data.event, {
                    stack = data.stack,
                    eventType = data.eventType
                })
            elseif event == LuaDebugger.event.S2C_LoadLuaScript then
                debugger_exeLuaString(body, true)
            end
        end
    end
end

coro_debugger = coroutine.create(debugger_loop)

debug_hook = function(event, line)
    if not jit then
        if (not LuaDebugger.isHook) then
            return
        end
        if (LuaDebugger.Run) then
            if (event == "line") then
                local isCheck = false
                for k, breakInfo in pairs(LuaDebugger.breakInfos) do
                    for bk, linesInfo in pairs(breakInfo) do
                        if (linesInfo.lines[line]) then
                            isCheck = true
                            break
                        end
                    end
                    if (isCheck) then
                        break
                    end
                end
                if (not isCheck) then
                    return
                end
            else
                LuaDebugger.currentFileName = nil
                LuaDebugger.currentTempFunc = nil
                return
            end
        end
        --跳出
        if (LuaDebugger.StepOut) then
            if (event == "line" or event == "call") then
                return
            end
            local tempFun = getinfo(2, "f").func
            if (LuaDebugger.currentDebuggerData.funcsLength == 1) then
                ResetDebugInfo();
                LuaDebugger.Run = true
            else
                if (LuaDebugger.currentDebuggerData.funcs[2] == tempFun) then
                    local data = debugger_stackInfo(3, LuaDebugger.event.C2S_StepInResponse)
                    --挂起等待调试器作出反应
                    coroutine.resume(coro_debugger, data)
                end
            end
            return
        end
        -- debugger_dump(LuaDebugger,"LuaDebugger")
        -- print1(LuaDebugger.StepNextLevel,"LuaDebugger.StepNextLevel")
        local file = nil
        if (event == "call") then
            -- if(not LuaDebugger.StepOut) then
            if (not LuaDebugger.Run) then
                LuaDebugger.StepNextLevel = LuaDebugger.StepNextLevel + 1
            end
            -- print1("stepIn",LuaDebugger.StepNextLevel)
            local stepInfo = getinfo(2, "S")
            local source = stepInfo.source
            if (source:find(LuaDebugger.DebugLuaFie) or source == "=[C]") then
                return
            end
            file = getSource(source);
            LuaDebugger.currentFileName = file
            -- end
        elseif (event == "return" or event == "tail return") then
            -- if(not LuaDebugger.StepOut) then
            if (not LuaDebugger.Run) then
                LuaDebugger.StepNextLevel = LuaDebugger.StepNextLevel - 1
            end
            LuaDebugger.currentFileName = nil
            -- end
        elseif (event == "line") then
            if (LuaDebugger.StepIn) then
                local data = debugger_stackInfo(3, LuaDebugger.event.C2S_NextResponse)
                --挂起等待调试器作出反应
                if (data) then
                    LuaDebugger.currentTempFunc = data.funcs[1]
                    coroutine.resume(coro_debugger, data)
                    return;
                end
            end
            if (LuaDebugger.StepNext) then
                if (LuaDebugger.StepNextLevel <= 0) then
                    local data = debugger_stackInfo(3, LuaDebugger.event.C2S_NextResponse)
                    --挂起等待调试器作出反应
                    if (data) then
                        LuaDebugger.currentTempFunc = data.funcs[1]
                        coroutine.resume(coro_debugger, data)
                        return
                    end
                end
            end
            local stepInfo = nil
            if (not LuaDebugger.currentFileName) then
                stepInfo = getinfo(2, "S")
                local source = stepInfo.source
                if (source == "=[C]" or source:find(LuaDebugger.DebugLuaFie)) then return end
                file = getSource(source);
                LuaDebugger.currentFileName = file
            end
            file = LuaDebugger.currentFileName
            --判断断点
            local breakInfo = LuaDebugger.breakInfos[file]
            if (breakInfo) then
                local ischeck = false
                for k, lineInfo in pairs(breakInfo) do
                    local lines = lineInfo.lines
                    if (lines and lines[line]) then
                        ischeck = true
                        break
                    end
                end
                if (not ischeck) then return end
                --并且在断点中
                local info = stepInfo
                if (not info) then
                    info = getinfo(2)
                end
                local hitPathNames = splitFilePath(file)
                local hitCounts = {}
                local flineInfo
                local hitCondition = false
                local hasCondition = false
                local hasCountCondition = false
                local hitCountCondition = false
                for k, lineInfo in pairs(breakInfo) do
                    local lines = lineInfo.lines
                    local pathNames = lineInfo.pathNames
                    if (lines and lines[line]) then
                        flineInfo = lineInfo
                        -- debugger_dump(lineInfo, "lineInfo", 6)
                        -- condition
                        if lineInfo.hitConditions and lineInfo.hitConditions[tostring(line)] then
                            hasCondition = true
                            local condition = lineInfo.hitConditions[tostring(line)]
                            -- debugger_dump(condition, "condition", 6)
                            local stackInfo = debugger_stackInfo(3, nil)
                            local doCondition = function()
                                local envs = { _G = _G }
                                local vars = stackInfo.vars[1]
                                local locals = vars.locals;
                                local ups = vars.ups
                                for k, v in pairs(ups) do
                                    envs[k] = v
                                end
                                for k, v in pairs(locals) do
                                    envs[k] = v
                                end
                                setmetatable(envs, { __index = _G })
                                local funStr = "return " .. condition
                                local fun = loadstring(funStr)
                                setfenv(fun, envs)
                                return fun()
                            end
                            local status, msg = xpcall(doCondition, function(error)
                            end)
                            hitCondition = status and msg
                        end
                        if hitCondition or not hasCondition then
                            --判断路径
                            hitCounts[k] = 0
                            local hitPathNamesCount = #hitPathNames
                            local pathNamesCount = #pathNames
                            while (true) do
                                if (pathNames[pathNamesCount] ~= hitPathNames[hitPathNamesCount]) then
                                    break
                                else
                                    hitCounts[k] = hitCounts[k] + 1
                                end
                                pathNamesCount = pathNamesCount - 1
                                hitPathNamesCount = hitPathNamesCount - 1
                                if (pathNamesCount <= 0 or hitPathNamesCount <= 0) then
                                    break
                                end
                            end
                        end
                        break
                    end
                end
                local hitFieName = ""
                local maxCount = 0
                for k, v in pairs(hitCounts) do
                    if (v > maxCount) then
                        maxCount = v
                        hitFieName = k
                    end
                end
                local hitPathNamesLength = #hitPathNames
                if (hitPathNamesLength == 1 or (hitPathNamesLength > 1 and maxCount > 1)) then
                    if (hitFieName ~= "" and flineInfo) then
                        -- debugger_dump(flineInfo, "flineInfo", 6)
                        if flineInfo.hitCount == nil then flineInfo.hitCount = {} end
                        if flineInfo.hitCount[line] == nil then flineInfo.hitCount[line] = 0 end
                        local currentCount = flineInfo.hitCount[line]
                        if flineInfo.countConditions and flineInfo.countConditions[tostring(line)] then
                            hasCountCondition = true
                            local targetCount = tonumber(flineInfo.countConditions[tostring(line)])
                            hitCountCondition = currentCount == targetCount - 1
                        end
                        flineInfo.hitCount[line] = currentCount + 1
                        if hitCondition or hitCountCondition or not hasCountCondition then
                            local data = debugger_stackInfo(3, LuaDebugger.event.C2S_HITBreakPoint)
                            coroutine.resume(coro_debugger, data)
                        end
                    end
                end
            end
        end
    else
        local file = nil
        if (event == "line") then
            local funs = nil
            local funlength = 0
            if (LuaDebugger.currentDebuggerData) then
                funs = LuaDebugger.currentDebuggerData.funcs
                funlength = #funs
            end
            local stepInfo = getinfo(2)
            local tempFunc = stepInfo.func
            local source = stepInfo.source
            file = getSource(source);
            if (source == "=[C]" or source:find(LuaDebugger.DebugLuaFie)) then return end
            if (funlength > 0 and funs[1] == tempFunc and LuaDebugger.currentLine ~= line) then
                LuaDebugger.runLineCount = LuaDebugger.runLineCount + 1
            end
            if (LuaDebugger.StepOut) then
                if (funlength == 1) then
                    ResetDebugInfo()
                    LuaDebugger.Run = true
                    return
                else
                    if (funs[2] == tempFunc) then
                        local data = debugger_stackInfo(3, LuaDebugger.event.C2S_StepInResponse)
                        -- print("StepIn 挂起")
                        --挂起等待调试器作出反应
                        coroutine.resume(coro_debugger, data)
                        return
                    end
                end
            end
            if (LuaDebugger.StepIn) then
                if (funs[1] == tempFunc and LuaDebugger.runLineCount == 0) then
                    return
                end
                local data = debugger_stackInfo(3, LuaDebugger.event.C2S_StepInResponse)
                -- print("StepIn 挂起")
                --挂起等待调试器作出反应
                coroutine.resume(coro_debugger, data)
                return
            end
            if (LuaDebugger.StepNext) then
                if (LuaDebugger.currentLine == line) then
                    return
                end
                if (funs) then
                    if (funs[1] ~= tempFunc) then
                        --判断是否是和下一个fun 相同如果相同
                        if (funlength > 1) then
                            if (funs[2] == tempFunc) then
                            else
                                return
                            end
                        else
                            return
                        end
                    end
                end
                local data = debugger_stackInfo(3, LuaDebugger.event.C2S_NextResponse)
                LuaDebugger.runLineCount = 0
                LuaDebugger.currentLine = line
                --挂起等待调试器作出反应
                coroutine.resume(coro_debugger, data)
                return
            end
            local isHit = false
            local sevent = nil
            --断点判断
            if (isHit == false and debugger_checkIsBreak(file, line)) then
                if (funs and funs[1] == tempFunc and LuaDebugger.runLineCount == 0) then
                    LuaDebugger.runLineCount = 0
                    return
                end
                LuaDebugger.runLineCount = 0
                LuaDebugger.currentLine = line
                isHit = true
                sevent = LuaDebugger.event.C2S_HITBreakPoint
                --调用 coro_debugger 并传入 参数
                local data = debugger_stackInfo(3, sevent)
                --挂起等待调试器作出反应
                coroutine.resume(coro_debugger, data)
            end
        end
    end
end

local function debugger_xpcall()
    --调用 coro_debugger 并传入 参数
    local data = debugger_stackInfo(4, LuaDebugger.event.C2S_HITBreakPoint)
    --挂起等待调试器作出反应
    coroutine.resume(coro_debugger, data)
end

--调试开始
local function start()
    if not jit then
        LuaDebugger.DebugLuaFie = getLuaFileName(getinfo(1).source)
    end
    local socket = createSocket()
    print(controller_host)
    print(controller_port)

    local server = socket.connect(controller_host, controller_port)
    debug_server = server
    if server then
        --创建breakInfo socket
        socket = createSocket()
        breakInfoSocket = socket.connect(controller_host, controller_port)
        if (breakInfoSocket) then
            breakInfoSocket:settimeout(0)
            debugger_sendMsg(breakInfoSocket, LuaDebugger.event.C2S_SetSocketName, {
                name = "breakPointSocket"
            })
            debugger_sendMsg(server, LuaDebugger.event.C2S_SetSocketName, {
                name = "mainSocket",
                version = LuaDebugger.version
            })
            xpcall(function()
                debug.sethook(debug_hook, "lrc")
            end, function(error)
                print("error:", error)
            end)
        end
        coroutine.resume(coro_debugger, server)
    end
end

function StartDebug(host, port)
    LuaDebugger.DebugLuaFie = getLuaFileName(getinfo(1).source)
    if jit then
        local index = LuaDebugger.DebugLuaFie:find("%.lua")
        if index then
            local fileNameLength = string.len(LuaDebugger.DebugLuaFie)
            LuaDebugger.DebugLuaFie = LuaDebugger.DebugLuaFie:sub(1, fileNameLength - 4)
        end
    end

    if not port then
        local token = getinfo(1).source
        if token then
            token = token:gsub("@", "")
            token = token:gsub("\\", "")
            token = token:gsub("/", "")
            token = token:gsub(":", "")
            token = token:gsub("LuaDebug.lua", "")
            token = token:lower()
            port = 0
            print(token)
            for i = 1, #token do
                port = port + string.byte(token:sub(i, i))
            end
            port = port % 10000 + 50000
        end
    end

    if not host then
        print("debug host can not be nil")
    end
    if not port then
        print("debug port can not be nil")
    end
    if type(host) ~= "string" then
        print("debug host arg must be string")
    end
    if type(port) ~= "number" then
        print("debug port arg must be number")
    end

    controller_host = host
    controller_port = port
    xpcall(start, function(error)
        print(error)
    end)
    return debugger_receiveDebugBreakInfo, debugger_xpcall
end

--base64
local string = string

ZZBase64.__code = {
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/',
};

ZZBase64.__decode = {}

for k, v in pairs(ZZBase64.__code) do
    ZZBase64.__decode[string.byte(v, 1)] = k - 1
end

function ZZBase64.encode(text)
    local len = string.len(text)
    local left = len % 3
    len = len - left
    local res = {}
    local index = 1
    for i = 1, len, 3 do
        local a = string.byte(text, i)
        local b = string.byte(text, i + 1)
        local c = string.byte(text, i + 2)
        -- num = a<<16 + b<<8 + c
        local num = a * 65536 + b * 256 + c
        for j = 1, 4 do
            --tmp = num >> ((4 -j) * 6)
            local tmp = math.floor(num / (2 ^ ((4 - j) * 6)))
            --curPos = tmp&0x3f
            local curPos = tmp % 64 + 1
            res[index] = ZZBase64.__code[curPos]
            index = index + 1
        end
    end
    if left == 1 then
        ZZBase64.__left1(res, index, text, len)
    elseif left == 2 then
        ZZBase64.__left2(res, index, text, len)
    end
    return table.concat(res)
end

function ZZBase64.__left2(res, index, text, len)
    local num1 = string.byte(text, len + 1)
    num1 = num1 * 1024 --lshift 10 
    local num2 = string.byte(text, len + 2)
    num2 = num2 * 4 --lshift 2 
    local num = num1 + num2

    local tmp1 = math.floor(num / 4096) --rShift 12
    local curPos = tmp1 % 64 + 1
    res[index] = ZZBase64.__code[curPos]

    local tmp2 = math.floor(num / 64)
    curPos = tmp2 % 64 + 1
    res[index + 1] = ZZBase64.__code[curPos]

    curPos = num % 64 + 1
    res[index + 2] = ZZBase64.__code[curPos]

    res[index + 3] = "=";
end

function ZZBase64.__left1(res, index, text, len)
    local num = string.byte(text, len + 1)
    num = num * 16

    local tmp = math.floor(num / 64)
    local curPos = tmp % 64 + 1
    res[index] = ZZBase64.__code[curPos]

    curPos = num % 64 + 1
    res[index + 1] = ZZBase64.__code[curPos]

    res[index + 2] = "=";
    res[index + 3] = "=";
end

function ZZBase64.decode(text)
    local len = string.len(text)
    local left = 0
    if string.sub(text, len - 1) == "==" then
        left = 2
        len = len - 4
    elseif string.sub(text, len) == "=" then
        left = 1
        len = len - 4
    end
    local res = {}
    local index = 1
    local decode = ZZBase64.__decode
    for i = 1, len, 4 do
        local a = decode[string.byte(text, i    )]
        local b = decode[string.byte(text, i + 1)]
        local c = decode[string.byte(text, i + 2)]
        local d = decode[string.byte(text, i + 3)]

        --num = a<<18 + b<<12 + c<<6 + d
        local num = a * 262144 + b * 4096 + c * 64 + d

        local e = string.char(num % 256)
        num = math.floor(num / 256)
        local f = string.char(num % 256)
        num = math.floor(num / 256)
        res[index] = string.char(num % 256)
        res[index + 1] = f
        res[index + 2] = e
        index = index + 3
    end
    if left == 1 then
        ZZBase64.__decodeLeft1(res, index, text, len)
    elseif left == 2 then
        ZZBase64.__decodeLeft2(res, index, text, len)
    end
    return table.concat(res)
end

function ZZBase64.__decodeLeft1(res, index, text, len)
    local decode = ZZBase64.__decode
    local a = decode[string.byte(text, len + 1)]
    local b = decode[string.byte(text, len + 2)]
    local c = decode[string.byte(text, len + 3)]
    local num = a * 4096 + b * 64 + c

    local num1 = math.floor(num / 1024) % 256
    local num2 = math.floor(num / 4) % 256
    res[index] = string.char(num1)
    res[index + 1] = string.char(num2)
end

function ZZBase64.__decodeLeft2(res, index, text, len)
    local decode = ZZBase64.__decode
    local a = decode[string.byte(text, len + 1)]
    local b = decode[string.byte(text, len + 2)]
    local num = a * 64 + b
    num = math.floor(num / 16)
    res[index] = string.char(num)
end

return StartDebug