local wastedEvent = CreateFrame("Frame")
local wastedWillPlay, wastedSoundHandle

local function WastedEventHandler(self, event)
	if event == "PLAYER_DEAD" then
		wastedWillPlay, wastedSoundHandle = PlaySoundFile("Interface/AddOns/Wasted/WastedSound.mp3", "Master")
	elseif event == "PLAYER_ALIVE" then
		StopSound(wastedSoundHandle)
	end
end

wastedEvent:RegisterEvent("PLAYER_DEAD")
wastedEvent:RegisterEvent("PLAYER_ALIVE")
wastedEvent:SetScript("OnEvent", WastedEventHandler)