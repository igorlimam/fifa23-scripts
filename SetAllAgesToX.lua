--- This script sets is_retiring on 0 for all players.
-- FIFA's Career mode goes on for 15 years, by the 8th, most famous players are regen or almost retiring.
-- To add insult to injury, most regens come with very similar names (I had over 40 players called "Branco")
-- and many share alike appearances
-- For that matter, this script removes retiring condition and set all birthdates to a certain time.
-- birthdate is the number of days starting from 14 october 1582 to the current birth date.

local rows = GetDBTableRows("players")

local counter = 0;
for i=1, #rows do
    local player = rows[i]
    -- 04/10/2004
    player.birthdate.value = "154853"
    player.isretiring.value = "0"
    player.jerseystylecode.value = "1"
    EditDBTableField(player.jerseystylecode)
    EditDBTableField(player.isretiring)
    EditDBTableField(player.birthdate)
    counter = counter + 1
end

MessageBox("Done", string.format("Edited %d players\n", counter))
