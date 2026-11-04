-- Color Changer Script for Roblox

local Players = game:GetService("Players")

local function changeColor(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local colors = {
        Color3.fromRGB(0, 0, 0), -- Black
        Color3.fromRGB(255, 255, 255), -- White
        Color3.fromRGB(0, 255, 0) -- Green
    }

    local index = 1
    while true do
        humanoid:WaitForChild("BodyColor").HeadColor = colors[index]
        humanoid:WaitForChild("BodyColor").TorsoColor = colors[index]
        humanoid:WaitForChild("BodyColor").LeftArmColor = colors[index]
        humanoid:WaitForChild("BodyColor").RightArmColor = colors[index]
        humanoid:WaitForChild("BodyColor").LeftLegColor = colors[index]
        humanoid:WaitForChild("BodyColor").RightLegColor = colors[index]

        index = index % #colors + 1
        wait(0.5) -- Change color every 0.5 seconds
    end
end

Players.PlayerAdded:Connect(changeColor)

for _, player in ipairs(Players:GetPlayers()) do
    changeColor(player)
end