local BREAKINFOFUNC, XPCALLFUNC = require("LuaDebug")("localhost", 7003)
Main = {}

function Main.Awake(gameObject)
    print("Main.Awake")
end

function Main.Start()
    print("Main.Start")
end

function Main.Update()
    
end

function Main.OnDestroy()
    print("Main.OnDestroy")
end