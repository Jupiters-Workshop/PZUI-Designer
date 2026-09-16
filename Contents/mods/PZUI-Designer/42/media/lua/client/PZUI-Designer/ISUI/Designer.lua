--'PZUI Designer' By The Project Zomboid Modding Community (PZMC) 09132026

--libraries
require ('ISUI/ISPanel')
require('Vehicles/ISUI/ISUI3DScene')


---@class PZUI : ISPanel
local PZUI = ISPanel:derive("PZUI-Designer/PZUI")

--Initialize Useful Variables
local Margin = 25 

function PZUI:initialise()
    ISPanel.initialise(self)
    self:create()
end

function PZUI:prerender()
    ISPanel.prerender(self)
end

function PZUI:render()

end

function PZUI:create() --our Custom create function that sets the Designer Tools look correctly
    --Our Designer Interface
    -- local ci_h = self.height - Margin * 2
    -- local ci_w = ci_h * 0.5
    -- local cInterface = ISPanel:new(Margin,Margin,ci_w,ci_h)
    -- cInterface.backgroundColor = {r=0, g=0, b=0, a=1}
    -- self:addChild(cInterface)

    local bottomPanel = ISPanel:new(0, self.height - 100 - 9, self.width, 100)
	bottomPanel:setAnchorTop(false)
	bottomPanel:setAnchorLeft(true)
	bottomPanel:setAnchorRight(true)
	bottomPanel:setAnchorBottom(true)
    bottomPanel.backgroundColor = {r=1, g=1, b=1, a=1}
    self:addChild(bottomPanel)


end

function PZUI:new(x, y, width, height)
    local o = ISPanel.new(self, x, y, width, height)
    return o
end

return PZUI



