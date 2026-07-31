local playersService = clonerf(game:GetService("Players"))
local player = playersService.LocalPlayer
local oi = nil

if (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) and (player.DisplayName == "Biel_TKS" or player.Name == "ROBLOX6666JK") then
    print("é o biel")
    oi = true
end
