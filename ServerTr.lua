repeat wait() until game:IsLoaded()
local LocalData = require(game.ReplicatedStorage:WaitForChild("Client"):WaitForChild("Framework"):WaitForChild("Services"):WaitForChild("LocalData"))
repeat wait() until LocalData:IsReady()
spawn(function()
    getgenv().PetHatcher = {
        Webhook = "https://discord.com/api/webhooks/1368315112737210398/ydQykT7Wt2IqZy94QkmVXOHkgE5jvPw0mYNSiUNJBn2ClRlk0-M7GFLcD6IjwsnWwLGU",
        Ping = "Secret Hatched <@&785853304328421447>",
        Rarities = {"Legendary", "Secret", "Infinity"},
        Ignore = {"Unicorn", "Angel Bee", "Paragon", "Emerald Golem", "Platinum Dualcorn", "Void Eye", "Neon Wyvern", "Soarin' Surfer", "Neon Elemental", "Lunar Serpent", "Electra", "Inferno Dragon", "Cyborg Phoenix", "Crystal Unicorn", "Green Hydra", "Inferno Cube", "Dark Phoenix", "Flying Pig", "Fossilus", "Kiwi Dragon", "Popsicle Trio"},
        SkipEasyLegends = true,
        HatchAmounts = false,
        Server = true,
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jakemo31/bgsi/refs/heads/main/bgsihatcher.lua"))()
end)
