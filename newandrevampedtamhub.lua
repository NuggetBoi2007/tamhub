local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("TAMHUB 2.9.5")
local serv = win:Server("TAMHUB", "")

local drops = serv:Channel("Update Log")

local drop = drops:Dropdown("TAMHUB 2.9.5",{"Phantasm dc actually working","Added universal tab","Added animation id finder","Added update log"}, function(bool)
print(bool)
end)

local btns = serv:Channel("Universal")

btns:Button("Infinite yield", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
DiscordLib:Notification("Notification", "Loaded Infinite Yield!", "Okay!")
end)
 
btns:Seperator()

btns:Button("Console", function()
game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
DiscordLib:Notification("Notification", "Opened Console!", "Okay!")
end)

btns:Seperator()

btns:Button("ESP", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/UILibs/main/ESP/Cornerbox/Example",true))()
DiscordLib:Notification("Notification", "Loaded ESP!", "Okay!")
end)

btns:Seperator()

btns:Button("Spoof id to game owner id", function()
Callback = function()game.Players.LocalPlayer.Character.Head:Destroy()if game.CreatorType == Enum.CreatorType.User thengame.Players.LocalPlayer.UserId = game.CreatorIdendif game.CreatorType == Enum.CreatorType.Group thengame.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Idendend}
DiscordLib:Notification("Notification", "Spoofed!", "Okay!")
end)

local btns = serv:Channel("TSB")

btns:Button("Mixed Powers", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/tsbanim.lua",true))()
DiscordLib:Notification("Notification", "Loaded anims!", "Okay!")
end)

btns:Seperator()

btns:Button("Gojo moves (only names)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/custommoves.lua",true))()
DiscordLib:Notification("Notification", "Loaded Names!", "Okay!")
end)

btns:Seperator()

btns:Button("KJ moves (only names)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/kjmoves.lua",true))()
DiscordLib:Notification("Notification", "Loaded Names!", "Okay!")
end)

btns:Seperator()

btns:Button("KJ ult moves (only names)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/kjmovesult.lua",true))()
DiscordLib:Notification("Notification", "Loaded Names!", "Okay!")
end)

btns:Seperator()

btns:Button("Tsb anims but idk", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Mautiku/ehh/main/strong%20guest.lua.txt",true))()
DiscordLib:Notification("Notification", "BE CAREFUL DO NOT USE SECRET CHARACTER ITS VERY BANNABLE!", "Okay!")
end)

btns:Seperator()

btns:Button("anim id finder", function()
local lp = game:GetService("Players").LocalPlayer
local function init(c)
    local h = c and c:WaitForChild("Humanoid", 1)
    if c and h then
        local a = {}
        h.AnimationPlayed:Connect(function(v)
            if not table.find(a, v.Animation.AnimationId) then
                table.insert(a, v.Animation.AnimationId)
                warn("Animation:", v.Animation.AnimationId)
            end
        end)
    end
end

init(lp.Character)
lp.CharacterAdded:Connect(init)
DiscordLib:Notification("Notification", "Loaded! (prints on console)", "Okay!")
end)

local btns = serv:Channel("Other")

btns:Button("Wave premium key generator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/free.lua",true))()
DiscordLib:Notification("Notification", "Loaded GUI!", "Okay!")
end)

btns:Seperator()

btns:Button("azure modded loader lmao", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded",true))()
DiscordLib:Notification("Notification", "Azure modded loaded (ha rhymes)", "Okay!")
end)

btns:Seperator()

btns:Button("kadehub skidded :rofl:", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/adsadsa.lua",true))()
DiscordLib:Notification("Notification", "KadeHub Initialized", "Okay!")
end)

local btns = serv:Channel("Gojo n shit")

btns:Button("Hollow Serious punch(heavy wip(gotta time it)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tamarixr/tamhub/main/gojojs.lua",true))()
end)

serv:Channel("by dfptt")


win:Server("Main", "http://www.roblox.com/asset/?id=18565910638")

local btns = serv:Channel("idfk stupid shit")

btns:Button("PHANTASMA DISCORD SERVER", function()
setclipboard("discord.gg/bntsEjwnA5")
DiscordLib:Notification("Notification", "Pasted to clipboard!", "Okay!")
end)
