-- Experimental script, make all players available as free agent in career mode
-- This script REMOVES women from their respective leagues and teams
-- Including women and some icon players such as Ronaldinho
-- The icon IDs were taken from the sheet https://docs.google.com/spreadsheets/d/1cDpeenm3RYBi5VPvcvdFChD7kwKB126TTsr4Zf6u_7A/edit?gid=0#gid=0

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
    "268513", "942", "1040", "1075", "1419", "4000", "4202", "7518", "52241", "190053",
    "191189", "237064", "237066", "237069", "238193", "238386", "238395", "238414", "238418",
    "238420", "238425", "238431", "238434", "238438", "238440", "238444", "239055", "239057",
    "239059", "239061", "239062", "239065", "239068", "239069", "239080", "239082", "239111",
    "239114", "239420", "239421", "239517", "239522", "239526", "239528", "239531", "239532",
    "239537", "239542", "239598", "239600", "239602", "239604", "242511", "242518", "242520",
    "242522", "242859", "242860", "242927", "242930", "242931", "242939", "242950", "243028",
    "243078", "243784", "247075", "247301", "247307", "247324", "247514", "247547", "247555",
    "247614", "247695", "247701", "247706", "248155", "248450", "250891", "254571", "255355",
    "255358", "255477", "255758", "255910", "256014", "256154", "256339", "256432", "256869",
    "257417", "258778", "260817", "261395", "261591", "262111", "267897", "268514", "269601",
    "388", "1109", "5680", "11141", "13038", "190049", "222481", "237062", "237063", "237065",
    "237071", "237603", "238381", "238383", "238387", "238415", "238419", "238421", "238426",
    "238429", "238432", "238433", "238436", "238437", "238706", "239054", "239056", "239058",
    "239060", "239063", "239064", "239067", "239070", "239081", "239083", "239110", "239115",
    "239262", "239419", "239422", "239516", "239518", "239524", "239525", "239527", "239530",
    "239533", "239535", "239539", "239541", "239599", "239601", "239603", "242517", "242521",
    "242858", "242861", "242928", "242929", "242932", "242940", "242951", "243031", "243079",
    "243783", "247074", "247303", "247305", "247327", "247517", "247549", "247552", "247616",
    "247693", "247700", "247704", "248154", "248449", "250889", "254570", "255354", "255357",
    "255476", "255757", "255909", "256013", "256153", "256338", "256431", "256870", "257416",
    "258779", "260816", "261394", "261592", "262110", "267896", "268515", "269600"
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
