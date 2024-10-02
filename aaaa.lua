local teleportRange = 50 -- tp range

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)
    local nearestPlayer = nil
    local shortestDistance = teleportRange

    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherCharacter = otherPlayer.Character
            if otherCharacter and otherCharacter:FindFirstChild("HumanoidRootPart") then
                local distance = (character.HumanoidRootPart.Position - otherCharacter.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestPlayer = otherPlayer
                end
            end
        end
    end

    if nearestPlayer then
        character.HumanoidRootPart.CFrame = nearestPlayer.Character.HumanoidRootPart.CFrame
    end
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)
