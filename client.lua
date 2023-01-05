
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end


	local id = GetPlayerServerId(PlayerId())

local config = {
    -- Left Menu Config
    ["TITLE"] = "~b~NAME",
    ["SUBTITLE"] = "~g~Discord: DiscordLINK~t~ | ~b~ID: ~w~" .. id,
    -- Right Menu Config
    ["SERVER_NAME"] = "~y~Name",
    ["SERVER_TEXT"] = "~b~ID: "..id,
    ["SERVER_DISCORD"] = "~g~DiscordLINK"
}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        -- Left Menu
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString(config["TITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
		--Right
		PopScaleformMovieFunction()
		N_0xb9449845f73f5e9c("SET_HEADING_DETAILS")
		PushScaleformMovieFunctionParameterString(config["SERVER_NAME"])
		PushScaleformMovieFunctionParameterString(config["SERVER_TEXT"]:format(cashAmount))
        PushScaleformMovieFunctionParameterString(config["SERVER_DISCORD"]:format(bankAmount))
		
        PopScaleformMovieFunctionVoid()


    end
end)