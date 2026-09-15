--'PZUI Handler' By The Project Zomboid Modding Community (PZMC) 09152026

local Designer = require 'PZUI-Designer/Designer'
local Options = PZAPI.ModOptions:create("PZUIOptions", "PZUI Designer Options")

local KEY_TOGGLE_HA = Options:addKeyBind(
    "Open Designer",
    getText("Open Designer"),
    68
)

Events.OnKeyPressed.Add(function(key)
    -- verify the keybind or escape is pressed
    if key ~= Options:getOption("Open Designer"):getValue() and key ~= 1 then return end

    -- if the UI exists, we close it
    if Designer and key == 1 then
        UIManager.getSpeedControls():SetCurrentGameSpeed(1)
        Designer:setVisible(false)
        Designer:removeFromUIManager()
        Designer = nil

    elseif Designer and key ~= 1 then --if our keybind was pressed instead we still close it
        UIManager.getSpeedControls():SetCurrentGameSpeed(1)
        Designer:setVisible(false)
        Designer:removeFromUIManager()
        Designer = nil

    elseif key == Options:getOption("Open Designer"):getValue() then -- else we create a new instance of that UI only when our keybind is pressed
        UIManager.getSpeedControls():SetCurrentGameSpeed(0)
        Designer = PZUI:new(0, 0, getCore():getScreenWidth(), getCore():getScreenHeight())
        Designer.backgroundColor = {r=1, g=1, b=1, a=1}
        Designer.borderColor = {r=0, g=0, b=0, a=1}
        Designer:initialise()
        Designer:addToUIManager()
    end
end)