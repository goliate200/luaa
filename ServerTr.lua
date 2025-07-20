repeat wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Check if UI already exists
if playerGui:FindFirstChild("EnabledUI") then
    warn("Enabled UI is already active. Script will not run again.")
    return
end

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EnabledUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create a TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Name = "EnabledLabel"
textLabel.Text = "✅ Enabled Pet Hatcher"
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.5, -100, 0.1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 14
textLabel.Parent = screenGui

-- Optional: Fade out after a few seconds
wait(3)
textLabel:TweenPosition(UDim2.new(0.5, -100, -0.2, 0), "Out", "Quad", 1)
wait(1)
screenGui:Destroy()

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
