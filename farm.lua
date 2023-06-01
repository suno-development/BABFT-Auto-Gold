local Players = game:GetService("Players")

workspace["New YellerZone"].VoteLaunchRE:FireServer()
workspace["Really redZone"].VoteLaunchRE:FireServer()
workspace["Really blueZone"].VoteLaunchRE:FireServer()
workspace["WhiteZone"].VoteLaunchRE:FireServer()
workspace["BlackZone"].VoteLaunchRE:FireServer()
workspace["MagentaZone"].VoteLaunchRE:FireServer()
workspace["CamoZone"].VoteLaunchRE:FireServer()

local StartingPosition = CFrame.new(-49, -9, -199, -0, -1, -0, -1, 1, -4, 0, -4, -0)
local FinalPosition = CFrame.new(-55, -361, 9491, 0, 0, -1, 0, 1, 0, 1, 0, 0)

repeat
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer:WaitForChild("Character")
    local HumanoidRootPart = Character.HumanoidRootPart or Character:WaitForChild("HumanoidRootPart")

    HumanoidRootPart.CFrame = CFrame.new(StartingPosition.X, 65, StartingPosition.Z)

    local TweenService = game:GetService("TweenService")

    coroutine.wrap(function()
        repeat
            HumanoidRootPart.Anchored = true
            task.wait(0.15)

            HumanoidRootPart.Anchored = false
            task.wait(0.35)
        until false
    end)()

    local Tween = TweenService:Create(HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(FinalPosition.X, 55, FinalPosition.Z)})
    Tween:Play()
    
    task.wait(35)
until false
