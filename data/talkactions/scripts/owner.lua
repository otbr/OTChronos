function onSay(cid, words, param)
	local player = Player(cid)
	local house = House(getTileHouseInfo(player:getPosition()))	
	if house == nil then
		player:sendCancelMessage("You are not inside a house.")
		return false
	end

	if param == "" or param == "none" then
		house:setOwnerGuid(0)
		return false
	end

	local tguid = getPlayerGUIDByName(param)
	if tguid == 0 then
		player:sendCancelMessage("Player not found.")
		return false
	end

	house:setOwnerGuid(tguid)
	return false
end
