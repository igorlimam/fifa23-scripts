-- Experiment script, make all players available as free agent in career mode
-- This script REMOVES women from their respective leagues and teams
-- Including women and some icon players such as Ronaldinho
-- The icon IDS were taken from the sheet https://docs.google.com/spreadsheets/d/1cDpeenm3RYBi5VPvcvdFChD7kwKB126TTsr4Zf6u_7A/edit?gid=0#gid=0

-- Get all rows for players table
local icons = {
    "51", "240", "246", "250", "1025", "1041", "1088", "1114", "1116", "1183", "1201", "1256",
    "1397", "1605", "1620", "1625", "1668", "3647", "4231", "4833", "5003", "5419", "5471",
    "5479", "5589", "5673", "5984", "6235", "7289", "7512", "7763", "9676", "10264", "10535",
    "13128", "13743", "23174", "28130", "31432", "34079", "37576", "45197", "45661", "45674",
    "48940", "49369", "51539", "54050", "121939", "121944", "138449", "140601", "156353",
    "161840", "166124", "166149", "166906", "167135", "167198", "167680", "190044", "190045",
    "190046", "190048", "191695", "192181", "214098", "214100", "214267", "214649", "222000",
    "226764", "238380", "238382", "238384", "238388", "238424", "238427", "238428", "238430",
    "238435", "238439", "238443", "239261", "239519", "242510", "242519", "243027", "243029",
    "243030", "247515", "247553", "247699", "247703", "248146", "250890", "254642", "262112",
    "268513"
}

local women = {}
local trueIcons = {}
local rows = GetDBTableRows("players")
local links = GetDBTableRows("teamplayerlinks")
local joinDate = "160817"
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
            iPlayer.playerjointeamdate.value = joinDate
            playerLink.teamid.value = teamId
            EditDBTableField(iPlayer.playerjointeamdate)
            EditDBTableField(playerLink.teamid)
            break
        end
    end
end

MessageBox("Done", string.format("Edited %d players\n", counter))