players = {"274050", "274060", "265319", "265352", "265350", "227254", "226991", "253469", "265286", "240030", "227323", "227454", "226354", "227353", "274040", "264982", "227327", "274070", "273984", "226301", "226327", "227125"}
local teamid = "110"

for i=1, #players do
    playerid = players[i]
    if (IsPlayerPresigned(playerid)) then
        DeletePresignedContract(playerid)
    end
    if (IsPlayerLoanedOut(playerid)) then
        -- Terminate loan to force transfer
        TerminateLoan(playerid)
    end
    TransferPlayer(playerid, teamid, 0, 10000, 60)
end