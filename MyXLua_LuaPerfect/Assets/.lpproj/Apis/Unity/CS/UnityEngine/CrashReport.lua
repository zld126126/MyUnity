---@class CS.UnityEngine.CrashReport : CS.System.Object
CS.UnityEngine.CrashReport = {}

---@field public CS.UnityEngine.CrashReport.time : CS.System.DateTime
CS.UnityEngine.CrashReport.time = nil

---@field public CS.UnityEngine.CrashReport.text : CS.System.String
CS.UnityEngine.CrashReport.text = nil

---@property readonly CS.UnityEngine.CrashReport.reports : CS.UnityEngine.CrashReport[]
CS.UnityEngine.CrashReport.reports = nil

---@property readonly CS.UnityEngine.CrashReport.lastReport : CS.UnityEngine.CrashReport
CS.UnityEngine.CrashReport.lastReport = nil

function CS.UnityEngine.CrashReport.RemoveAll()
end

function CS.UnityEngine.CrashReport:Remove()
end