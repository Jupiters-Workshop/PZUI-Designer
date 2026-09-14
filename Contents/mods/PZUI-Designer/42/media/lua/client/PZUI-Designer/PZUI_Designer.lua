--'PZUI Designer' By The Project Zomboid Modding Community (PZMC) 09132026

local Options = PZAPI.ModOptions:create("HearingAidsOptions", "Hearing Aids Options")

local KEY_TOGGLE_HA = Options:addKeyBind(
    "Toggle_Hearing_Aids",
    getText("HearingAid_HearingAidOptions_HearingAidKeybind"),
    52
)




Events.OnKeyPressed.Add(OnKeyPressed)