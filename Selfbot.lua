local SelfBot = {}
SelfBot.Version = "v1.0"
function SendMsg(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end

for _,v in pairs(game.Players:GetPlayers()) do
game.Players[v.Name].Chatted:Connect(function(msg)
if msg:lower() == ";gameinfo" then
wait(0.1)
local children = game.Players:GetChildren();
local numberOfChildren = #children;
SendMsg("PlaceId : "..game.PlaceId.." | Players : "..numberOfChildren.."/"..game.Players.MaxPlayers.."")
elseif msg:lower() == ";ping" then
wait(0.1)
SendMsg("Pong!")
elseif msg:lower() == ";botinfo" then
wait(0.1)
SendMsg("SelfBot "..SelfBot.Version..")
elseif msg:lower() == ";cmds" then
wait(0.1)
SendMsg("Commands! | ;botinfo - Sends The Bot's Info | ;ping - Pong! | ;gameinfo - Prints game info.")
		end
	end)
end
