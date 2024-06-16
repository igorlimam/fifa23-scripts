--- This script sets is_retiring on 0 for all players.
-- FIFA's Career mode goes on for 15 years, by the 8th, most famous players are regen or almost retiring.
-- To add insult to injury, most regens come with very similar names (I had over 40 players called "Branco")
-- and many share alike appearances
-- For that matter, this script removes current retiring condition and set all birthdates to a certain time.

local rows = GetDBTableRows("players")

local counter = 0;
for i=1, #rows do
    local player = rows[i]
    -- 14 August 2006
    player.birthdate.value = "154802"
    player.isretiring.value = "0"
    EditDBTableField(player.isretiring)
    EditDBTableField(player.birthdate)
    counter = counter + 1
end

MessageBox("Done", string.format("Edited %d players\n", counter))
