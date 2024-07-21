-- Set potential and modifier of your team to 99/5
-- Search the ID for your particular team

-- RomaFC ID 114912
local teamId = "115486"
local rows = GetDBTableRows("players")
local links = GetDBTableRows("teamplayerlinks")

local counter = 0;
for i=1, #links do
    local link = links[i]
    if link.teamid.value == teamId then
        for j=1, #rows do
            local player = rows[j]
            if player.playerid.value == link.playerid.value then
                print(player.playerid.value)
                player.modifier.value = "5"
                player.potential.value = "99"
                player.contractvaliduntil.value = "2047"
                EditDBTableField(player.modifier)
                EditDBTableField(player.potential)
                EditDBTableField(player.contractvaliduntil)
                SetPlayerSharpness(player.playerid.value, 100)
                SetPlayerForm(player.playerid.value, 100)
                SetPlayerMorale(player.playerid.value, 100)
                counter = counter + 1
                break
            end
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))
