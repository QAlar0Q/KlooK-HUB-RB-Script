local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("KlooK HUB✅", "RJTheme6")
local Tab = Window:NewTab("Legit🟢")
local Section = Tab:NewSection("Character➕")

Section:NewSlider("Speed🟡", "Avatar walkspeeed🟡", 245, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump power🟢", "Afetar jump power🟢", 245, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = s
end)

Section:NewSlider("Gravity🟡", "Gravity🟡", 500, -100, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    workspace.Gravity = s

end)


local Section = Tab:NewSection("Player🟢")
          
Section:NewButton("Esp👀", "Wall hack👀", function()

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

while wait(0.5) do
    -- Clear existing ESP adornments for objects that no longer have a Humanoid
    for _, esp in ipairs(workspace:GetDescendants()) do
        if esp.Name == "Esp" and (not esp.Adornee or not esp.Adornee:FindFirstChild("Humanoid")) then
            esp:Destroy()
        end
    end

    -- Add ESP to objects with Humanoid
    for _, x in ipairs(workspace:GetDescendants()) do
        if x:FindFirstChild("Humanoid") and x ~= localPlayer.Character then
            if not x:FindFirstChild("Esp") then
                local esp = Instance.new("BoxHandleAdornment")
                esp.Adornee = x
                esp.ZIndex = 0
                esp.Size = Vector3.new(4, 5, 2)
                esp.Transparency = 0.65
                esp.Color3 = Color3.fromRGB(255, 48, 50)
                esp.AlwaysOnTop = true
                esp.Name = "Esp"
                esp.Parent = x
            end
        end
    end
end
end)

Section:NewButton("AimBot👁", "Press E to on AimBot👁", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/k5nfErmK"))()
end)


local Tab = Window:NewTab("Universal🟡")
local Section = Tab:NewSection("Admin🟡")

Section:NewToggle("Fly🟡", "Fly funcion changes gravity to 1 LOL😂", function(state)
    if state then
        workspace.Gravity = 1
    else
        workspace.Gravity = 196
    end
end)

Section:NewButton("Infinity Yeald🔴", "Admin script function: tp, fling, fly", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Section = Tab:NewSection("Gui")

Section:NewButton("Fly gui🔴", "Fli gui v3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

local Tab = Window:NewTab("Info❓")

local Section = Tab:NewSection("Info❔")

Section:NewDropdown("Info❔", "❔❔❔", {"🟢: Almost undetectable by anti cheat and players ", "🟡: In most cases it turns out to be anti-cheat and players ", "🔴: It is not recommended to use it very often because you may be banned."}, function(currentOption)
    print(currentOption)
end)


