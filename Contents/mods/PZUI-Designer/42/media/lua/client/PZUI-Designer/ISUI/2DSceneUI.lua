require "Vehicles/ISUI/ISUI3DScene"

EditVehicleUI = ISPanel:derive("EditVehicleUI")

EditVehicleUI_Scene = ISUI3DScene:derive("EditVehicleUI_Scene")
EditVehicleUI_SwitchView = ISUI3DScene:derive("EditVehicleUI_SwitchView")
local Scene = EditVehicleUI_Scene
local SwitchView = EditVehicleUI_SwitchView