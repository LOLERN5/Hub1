-- HWID Whitelist

local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
local WhitelistedHWIDs = {"","",""}

function CheckHWID(hwidval)
for _,whitelisted in pairs(WhitelistedHWIDs) do
 if hwidval == whitelisted then
     return true
 elseif hwidval ~= whitelisted then
     return false
       end
    end
end

CheckHWID(HWID)
