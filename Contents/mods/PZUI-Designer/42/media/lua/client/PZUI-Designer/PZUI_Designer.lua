--'PZUI Designer' By The Project Zomboid Modding Community (PZMC) 09132026

--libraries
require "ISUI/ISPanel"

---@class PZUI : ISPanel
local PZUI = ISPanel:derive("PZUI-Designer/PZUI")
local Options = PZAPI.ModOptions:create("PZUIOptions", "PZUI Designer Options")

local KEY_TOGGLE_HA = Options:addKeyBind(
    "Open Designer",
    getText("Open Designer"),
    68
)


local Designer
Events.OnKeyPressed.Add(function(key)
    -- verify the keybind is pressed
    if key ~= Options:getOption("Open Designer"):getValue() then return end

    -- if the UI exists, we close it
    if Designer then
        UIManager.getSpeedControls():SetCurrentGameSpeed(1)
        Designer:setVisible(false)
        Designer:removeFromUIManager()
        Designer = nil
        
    -- else we create a new instance of that UI
    else
        UIManager.getSpeedControls():SetCurrentGameSpeed(0)
        Designer = PZUI:new(0, 0, getCore():getScreenWidth(), getCore():getScreenHeight())
        Designer:initialise()
        Designer:addToUIManager()
    end
end)

