local Notification = {}

function Notification:Create(title, description, duration)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "CustomNotificationGui"
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

    local Frame = Instance.new("Frame")
    Frame.Name = "NotificationFrame"
    Frame.Size = UDim2.new(0, 200, 0, 60)
    Frame.Position = UDim2.new(1, -220, 1, -70)
    Frame.BackgroundColor3 = Color3.new(0, 0, 1)  -- Change background color to blue
    Frame.BorderSizePixel = 0
    Frame.Parent = ScreenGui

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Name = "TitleLabel"
    TitleLabel.Text = title
    TitleLabel.TextSize = 14
    TitleLabel.TextColor3 = Color3.new(0, 1, 1)  -- Change text color to cyan
    TitleLabel.Position = UDim2.new(0, 10, 0, 5)
    TitleLabel.Size = UDim2.new(1, -20, 0, 15)
    TitleLabel.Font = Enum.Font.GothamSemibold
    TitleLabel.BackgroundTransparency = 1  -- Set background transparency to fully transparent
    TitleLabel.Parent = Frame

    local DescriptionLabel = Instance.new("TextLabel")
    DescriptionLabel.Name = "DescriptionLabel"
    DescriptionLabel.Text = description
    DescriptionLabel.TextSize = 12
    DescriptionLabel.TextWrapped = true
    DescriptionLabel.TextColor3 = Color3.new(0, 1, 1)  -- Change text color to cyan
    DescriptionLabel.Position = UDim2.new(0, 10, 0, 20)
    DescriptionLabel.Size = UDim2.new(1, -20, 0, 30)
    DescriptionLabel.Font = Enum.Font.Gotham
    DescriptionLabel.BackgroundTransparency = 1  -- Set background transparency to fully transparent
    DescriptionLabel.Parent = Frame

    Frame:TweenPosition(UDim2.new(1, -220, 1, -70), "Out", "Quart", 1, true)

    wait(duration or 5)

    Frame:TweenPosition(UDim2.new(1, 20, 1, -70), "In", "Quart", 1, true)  -- Smoothly move out the notification

    wait(1)  -- Wait for the outro animation

    ScreenGui:Destroy()

    wait(1)  -- Introduce a delay before creating a new notification

    return ScreenGui
end

-- Example usage:
local newNotification = Notification:Create("Rasma Beta", "This is a cool notification!", 5)
-- You can create additional notifications using the returned ScreenGui instance
