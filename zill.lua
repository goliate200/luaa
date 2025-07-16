repeat wait() until game:IsLoaded()
local LocalData = require(game.ReplicatedStorage:WaitForChild("Client"):WaitForChild("Framework"):WaitForChild("Services"):WaitForChild("LocalData"))
repeat wait() until LocalData:IsReady()
spawn(function()
    getgenv().PetHatcher = {
        Webhook = "https://discord.com/api/webhooks/1368349602901921884/KBMcZ3469kfFuypOdovJWoYd3ghB46rGesPi2BBR7Pn9JbyYCooaOyqjg0i6kIzMAiHV",
        Ping = "<@807429851895300107> you hatched a secret",
        Rarities = {"Legendary", "Secret", "Infinity"},
        Ignore = {"Unicorn", "Paragon", "Emerald Golem", "Platinum Dualcorn", "Void Eye", "Neon Wyvern", "Soarin' Surfer", "Neon Elemental", "Lunar Serpent", "Electra", "Inferno Dragon", "Cyborg Phoenix", "Crystal Unicorn", "Green Hydra", "Inferno Cube", "Dark Phoenix", "Flying Pig", "Fossilus", "Kiwi Dragon", "Popsicle Trio"},
        SkipEasyLegends = true,
        HatchAmounts = false,
        Server = false,
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jakemo31/bgsi/refs/heads/main/bgsihatcher.lua"))()
end)
