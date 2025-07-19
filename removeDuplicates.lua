local links = GetDBTableRows("teamplayerlinks")

local logtable = {}
local counter = 0
for index, wPlayer in ipairs(links) do
    local index = wPlayer.playerid.value
	logtable[index] = (logtable[index] or 0) + 1
	if logtable[index] > 1 then
		DeleteDBTableRow("teamplayerlinks", wPlayer)
		counter = counter + 1
	end
end

MessageBox("Done", string.format("Removed %d duplicated players\n", counter))
