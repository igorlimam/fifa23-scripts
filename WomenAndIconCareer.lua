-- Experimental script, make all players available as free agent in career mode
-- This script REMOVES women from their respective leagues and teams
-- Including women and some icon players such as Ronaldinho
-- The icon IDs were taken from the sheet https://docs.google.com/spreadsheets/d/1cDpeenm3RYBi5VPvcvdFChD7kwKB126TTsr4Zf6u_7A/edit?gid=0#gid=0

-- Get all rows for players table
-- soccer aid
-- use the set ages script to reflect those icons
local icons = {
    "27","51","240","246","250","330","1116","1183","1201",
	"1256","1397","1605","1668","5003","5419","5589","6975",
	"7512","13128","28130","34079","45674","51539","54050",
	"166906","191972","238382","238424","238428","238430","238435",
	"239261","243027","243029","247515","247699","247703","255477",
}



local women = {}
local trueIcons = {}
local rows = GetDBTableRows("players")
local links = GetDBTableRows("teamplayerlinks")
local joinDate = "159506"
local teamId = "111592"

local counter = 0
local counterIcon = 0
for i=1, #rows do
    local player = rows[i]
    if player.gender.value == "1" then
        women[counter] = player
        counter = counter + 1
    end
    for index, iconId in ipairs(icons) do
        if player.playerid.value == iconId then
            trueIcons[counterIcon] = player
            counterIcon = counterIcon + 1
            break
        end
    end
end

for index, wPlayer in ipairs(women) do
    for i=1, #links do
        local playerLink = links[i]
        if playerLink.playerid.value == wPlayer.playerid.value then
			ReleasePlayerFromTeam(wPlayer.playerid.value)
			wPlayer.playerjointeamdate.value = joinDate
			playerLink.teamid.value = teamId
			EditDBTableField(wPlayer.playerjointeamdate)
			EditDBTableField(playerLink.teamid)
            break
        end
    end
end

for index, iPlayer in ipairs(trueIcons) do
    for i=1, #links do
        local playerLink = links[i]
        if playerLink.playerid.value == iPlayer.playerid.value then
            ReleasePlayerFromTeam(iPlayer.playerid.value)
			iPlayer.playerjointeamdate.value = joinDate
            playerLink.teamid.value = teamId
            EditDBTableField(iPlayer.playerjointeamdate)
            EditDBTableField(playerLink.teamid)
            break
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))