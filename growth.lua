local growth = GetDBTableRows("career_playergrowthuserseason")
local links = GetDBTableRows("teamplayerlinks")
local teamId = "115486"

local counter = 0;
for i=1, #links do
    local link = links[i]
    if link.teamid.value == teamId then
        for j=1, #growth do
            local player = growth[j]
            if player.playerid.value == link.playerid.value then
                for key, object in pairs(player) do
                    if(key ~= "playerid") then
                        player[key].value = "99"
                        EditDBTableField(player[key])
                    end
                end
                counter = counter + 1
            end
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))