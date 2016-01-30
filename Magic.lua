SLASH_MAGIC1 = "/magic"

SlashCmdList["MAGIC"] = function(spell)
	Magic(spell)
end

function Magic(spell)
	local i = 0
	while targetSwitchRequired() == true do
		TargetNearestEnemy()
		i = i + 1
		if i == 10 then
			do break end
		end
	end

	if targetSwitchRequired() == true then
		return
	end
	
	CastSpellByName(spell)
end

function targetSwitchRequired()
-- or not UnitIsEnemy("player","target")
	if UnitName("target") == nil or UnitIsDead("target") then return true end
	return false
end
