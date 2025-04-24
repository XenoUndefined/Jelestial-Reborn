
-- prevent multiple ui's
if game:GetService("CoreGui"):FindFirstChild("UiLib") then
    game:GetService("CoreGui").UiLib:Destroy()
end

if game:GetService("CoreGui"):FindFirstChild("UILibToggler") then
    game:GetService("CoreGui").UILibToggler:Destroy()
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/stysscythe/script/main/LibTest.lua"))()

-- mobile-friendly gui
local togglegui = Instance.new("ScreenGui")
togglegui.Name = "UILibToggler"
togglegui.Parent = game.CoreGui

local t = Instance.new("TextButton")
t.Name = "MobileFriendlyToggle"
t.Parent = togglegui
t.Position = UDim2.new(0, 30, 0, 30)
t.Size = UDim2.new(0, 50, 0, 50)
t.Draggable = true 
t.BackgroundColor3 = Color3.fromRGB(23, 22, 34)
t.TextColor3 = Color3.fromRGB(233, 233, 233)
t.Font = Enum.Font.GothamBlack
t.Text = "JR"
t.TextSize = 35
t.Visible = false
if game.UserInputService.TouchEnabled then
t.Visible = true
end

t.MouseButton1Click:Connect(function()
    if game:GetService("CoreGui").UiLib.Enabled == true then
        game:GetService("CoreGui").UiLib.Enabled = false
    else
        game:GetService("CoreGui").UiLib.Enabled = true
    end
end)

-- pc friendly controls
game.UserInputService.InputBegan:Connect(function(input, game)
    if input.KeyCode == Enum.KeyCode.RightShift and not game then
        if game:GetService("CoreGui").UiLib.Enabled == true then
            game:GetService("CoreGui").UiLib.Enabled = false
        else
            game:GetService("CoreGui").UiLib.Enabled = true
        end
    end
end)


local tcorner = Instance.new("UICorner")
tcorner.Parent = t
tcorner.Name = "Corner"
tcorner.CornerRadius = UDim.new(0, 16)

-- whats the point of a window if the name wont show???
local Window = Library.Window('Jelestial Reborn')

-- prevents ui from getting killed on death (coregui's dont get removed when your player succumbs death)
game:GetService("Players").LocalPlayer.PlayerGui.UiLib.Parent = game.CoreGui

-- changes "UILib" to "Jelestial Rework" (Old: Jelestial Reborn)
game:GetService("CoreGui").UiLib.Main.TopBar.LibraryTitle.Text = "Jelestial Rework"

-- on pc the ui will load in the middle, if you're on mobile it makes it go into the middle (assumes you use mobile and might not work for different screen resolutions)
if game.UserInputService.TouchEnabled then
    game.CoreGui.UiLib.Main.Position = UDim2.new(0, 120, 0, 0)
end

-- blatant tab - stuff that can be seen by other players
local blatant = Window.CreateTab('Blatant')

-- utility tab - idk
local utility = Window.CreateTab('Utility')

-- visuals tab - stuff that can only be seen by you and no one else
local visuals = Window.CreateTab('Visuals')

-- game tab - modify world settings
local game = Window.CreateTab('Game')

local credits = Window.CreateTab('Credits')


credits.CreateDivider("Developers")
credits.CreateLabel("Xeno/XenoUndefined")

credits.CreateDivider("UI Library Family")
credits.CreateLabel("stysucks (UI Library Parent)")
credits.CreateLabel("KR4K (UI Library Child)")

