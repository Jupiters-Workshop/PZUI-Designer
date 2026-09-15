--'PZUI Handler' By The Project Zomboid Modding Community (PZMC) 09152026

local PZUI = require 'PZUI-Designer/ISUI/Designer'
local Options = PZAPI.ModOptions:create("PZUIOptions", "PZUI Designer Options")

local _KEY_TOGGLE_HA = Options:addKeyBind(
    "Open Designer",
    getText("Open Designer"),
    68
)

local Designer
Events.OnKeyPressed.Add(function(key)
    -- verify the keybind or escape is pressed
    if key ~= Options:getOption("Open Designer"):getValue() then return end

    -- if the UI exists, we close it
    if Designer then
        Designer:setVisible(false)
        Designer:removeFromUIManager()
        Designer = nil

    else -- else we create a new instance of that UI
        UIManager.getSpeedControls():SetCurrentGameSpeed(0)
        Designer = PZUI:new(0, 0, getCore():getScreenWidth(), getCore():getScreenHeight())
        Designer.backgroundColor = {r=0.0969, g=0.0969, b=0.0969, a=1}
        Designer:initialise()
        Designer:addToUIManager()
    end
end)