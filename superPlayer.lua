local players = GetDBTableRows("players")
local growth = GetDBTableRows("career_playergrowthuserseason")
local links = GetDBTableRows("teamplayerlinks")
local teamId = "115486"
local trait1Hash = "805306330"
local trait2Hash = "31"

local counter = 0;
for i=1, #links do
    local link = links[i]
    if link.teamid.value == teamId then
        for j=1, #growth do
            local player = growth[j]
            if player.playerid.value == link.playerid.value then
                for key, object in pairs(player) do
                    if(key ~= "playerid") then
                        for k=1, #players do
                            local actual_player = players[k]
                            if(actual_player.playerid.value == player.playerid.value) then
                                local aKey = key
                                if(key == "overall") then
                                    aKey = "overallrating"
                                elseif(key == "dribspeed") then
                                    aKey = "dribbling"
                                end
                                print(aKey)
                                PlayerSetValueInDevelopementPlan(actual_player.playerid.value, aKey, 99)
                                PlayerSetValueInDevelopementPlan(actual_player.playerid.value, "skillmoves", 4)
                                PlayerSetValueInDevelopementPlan(actual_player.playerid.value, "weakfootabilitytypecode", 5)
                                PlayerSetValueInDevelopementPlan(actual_player.playerid.value, "attackingworkrate", 2)
                                PlayerSetValueInDevelopementPlan(actual_player.playerid.value, "defensiveworkrate", 2)
                                actual_player.skillmoves.value = "4"
                                actual_player.skillmoveslikelihood.value = "4"
                                actual_player.weakfootabilitytypecode.value = "5"
                                actual_player.attackingworkrate.value = "2"
                                actual_player.defensiveworkrate.value = "2"
                                actual_player.trait1.value = trait1Hash
                                actual_player.trait2.value = trait2Hash
                                actual_player.contractvaliduntil.value = "2047"
                                actual_player.modifier.value = "5"
                                actual_player.potential.value = "99"
                                EditDBTableField(actual_player.modifier)
                                EditDBTableField(actual_player.potential)
                                SetPlayerSharpness(actual_player.playerid.value, 100)
                                SetPlayerForm(actual_player.playerid.value, 100)
                                SetPlayerMorale(actual_player.playerid.value, 100)
                                EditDBTableField(actual_player.skillmoves)
                                EditDBTableField(actual_player.skillmoveslikelihood)
                                EditDBTableField(actual_player.weakfootabilitytypecode)
                                EditDBTableField(actual_player.attackingworkrate)
                                EditDBTableField(actual_player.defensiveworkrate)
                                EditDBTableField(actual_player.trait1)
                                EditDBTableField(actual_player.trait2)
                                EditDBTableField(actual_player.contractvaliduntil)
                                break;
                            end
                        end
                    end
                end
                counter = counter + 1
            end
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))