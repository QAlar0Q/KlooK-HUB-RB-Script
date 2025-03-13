local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("KlooK HUB✅", "RJTheme6")
local Tab = Window:NewTab("Legit🟢") 
local Section = Tab:NewSection("Character➕")

Section:NewSlider("Speed🟡", "Avatar walkspeeed🟡", 245, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump power🟢", "Afetar jump power🟢", 245, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
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

Section:NewButton("Noclip🟡", "Noclip", function()
    local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left


Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)
		
end)

local Tab = Window:NewTab("Info❓")

local Section = Tab:NewSection("Info❔")

Section:NewDropdown("Info❔", "❔❔❔", {"🟢: Almost undetectable by anti cheat and players ", "🟡: In most cases it turns out to be anti-cheat and players ", "🔴: It is not recommended to use it very often because you may be banned."}, function(currentOption)
    print(currentOption)
end)



local Tab = Window:NewTab("HUBS🔓")
local Section = Tab:NewSection("Ghost HUB👻")

Section:NewButton("Ghost HUB👻", "👻👻👻", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

local Section = Tab:NewSection("EZ HUB💥(Recomendet)")

Section:NewButton("EZ hub⚠", "👻👻👻", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)



local Tab = Window:NewTab("Troll😂")
local Section = Tab:NewSection("FE animations✅")

Section:NewButton("🔞", "LOL", function()
    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
end)


Section:NewButton("FE animations🤑", "LOL", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com//shutupjamestheloser/freaky/refs/heads/main/fe", true))()
end)

local Section = Tab:NewSection("FE troll🤑")

Section:NewButton("Bring parts player🌐", "LOL", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers"))("More Scripts: t.me/arceusxscripts")
end)


Section:NewButton("BlackHole - BringParts💫", "LOL", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
 
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 
local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
 
if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
 
    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end
 
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(Workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end
 
    EnablePartControl()
end
 
local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end
 
local blackHoleActive = true
 
local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end
 
        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)
 
        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                Attachment1.WorldCFrame = humanoidRootPart.CFrame
            end
        end)
    end
end
 
local function createControlButton()
    local screenGui = Instance.new("ScreenGui")
    local button = Instance.new("TextButton")
 
    screenGui.Name = "BlackHoleControlGUI"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
 
    button.Name = "ToggleBlackHoleButton"
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0, 100)
    button.Text = "Desativar Buraco Negro"
    button.Parent = screenGui
 
    button.MouseButton1Click:Connect(function()
        toggleBlackHole()
        if blackHoleActive then
            button.Text = "Desativar Buraco Negro"
        else
            button.Text = "Ativar Buraco Negro"
        end
    end)
end
 
createControlButton()
toggleBlackHole()

end)



Section:NewButton("FE yeet player gui🔰", "LOL", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "yeet gui",
		Text = str,
		Icon = "rbxassetid://2005276185",
		Duration = dur or 3
	})
end

--// sds

local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)
Main.Image = "rbxassetid://2005276185"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "FE Yeet Gui (trollface edition)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Who do i destroy(can be shortened)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Cheese em'"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	local Target = gplr(TextBox.Text)
	if Target[1] then
		Target = Target[1]
		
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(9999,9999,9999)
		Thrust.Name = "YeetForce"
		repeat
			lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
			Thrust.Location = Target.Character.HumanoidRootPart.Position
			game:FindService("RunService").Heartbeat:wait()
		until not Target.Character:FindFirstChild("Head")
	else
		notif("Invalid player")
	end
end)

--//fsddfsdf
notif("Loaded successfully! Created by scuba#0001", 5)

end)


local Tab = Window:NewTab("Games🌎")
local Section = Tab:NewSection("MM2🔪")

Section:NewButton("CoinFarm🏆", "LOL", function()
		if game.PlaceId == 142823291 then
  -- [ Services ] --
  local Players = game:GetService('Players')
  local CoreGUI = game:GetService('CoreGui')
  local TweenService = game:GetService('TweenService')
  local UserInputService = game:GetService("UserInputService")
  local Highlight = Instance.new('Highlight')
  local Executor = identifyexecutor()
  local HIDEUI = get_hidden_gui or gethui
  local tweenInfoBTP = TweenInfo.new(2.9, Enum.EasingStyle.Linear)
  getgenv().coinFarm = false
  
  -- [ GUI ] --
  local ScreenGui = Instance.new('ScreenGui')
  local MainFrame = Instance.new('Frame')
  local HeaderFrame = Instance.new('Frame')
  local HeaderFix = Instance.new('Frame')
  local Description = Instance.new('TextLabel')
  local GameName = Instance.new('TextLabel')
  local Icon = Instance.new('ImageLabel')
  local CloseIcon = Instance.new('ImageButton')
  local MainButton = Instance.new('TextButton')
  
  -- [ Function ] --
  if syn and typeof(syn) == "table" and RenderWindow then 
    syn.protect_gui = gethui
  end
  local function Hide_UI(gui)
    if HIDEUI then
      gui["Parent"] = HIDEUI()
    elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
      syn.protect_gui(gui)
      gui["Parent"] = CoreGUI
    elseif CoreGUI:FindFirstChild('RobloxGui') then
      gui["Parent"] = CoreGUI.RobloxGui
    else
      gui["Parent"] = CoreGUI
    end
  end
  local function MakeDraggable(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
	    local delta = input.Position - dragStart
	    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	        dragging = true
	        dragStart = input.Position
	        startPos = gui.Position
	        
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	gui.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	        dragInput = input
	    end
	end)
	 
	UserInputService.InputChanged:Connect(function(input)
	    if input == dragInput and dragging then
	        update(input)
	    end
      end)
  end
  local function bypassTP(v)
    if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
      --local cf = CFrame.new(v)
      local move = TweenService:Create(Players.LocalPlayer.Character.HumanoidRootPart, tweenInfoBTP, {CFrame=v})
      
      move:Play()
    end
  end
  function coinFarm()
    while getgenv().coinFarm == true do
      local children = game.Workspace:GetChildren()
      for _,child in pairs(children) do
        for _,child in pairs(child:GetChildren()) do
          table.insert(children, child)
        end
        if child:IsA('BasePart') and child.Name == "Coin_Server" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.CFrame
          --bypassTP(child.CFrame)
          wait(2.9)
        end
      end
      wait()
    end
  end
  function sayMessage(message)
		game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
	end
  
  -- [ Codes ] --
  ScreenGui.Name = 'QuantumixHUB'
  ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  ScreenGui.IgnoreGuiInset = false
  ScreenGui.ResetOnSpawn = false
  ScreenGui.Parent = CoreGUI
  
  local FrameCorner = Instance.new('UICorner')
  MainFrame.Name = tostring('QX:'..math.random(999, 999999))
  MainFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
  MainFrame.BorderSizePixel = 0
  MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
  MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
  MainFrame.Size = UDim2.new(0, 250, 0, 150)
  MainFrame.Parent = ScreenGui
  MakeDraggable(MainFrame)
  
  FrameCorner.Parent = MainFrame
  FrameCorner.CornerRadius = UDim.new(0, 10)
  
  local HeaderCorner = Instance.new('UICorner')
  HeaderFrame.Name = tostring('HD:'..math.random(999, 999999))
  HeaderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  HeaderFrame.BorderSizePixel = 0
  HeaderFrame.Size = UDim2.new(1, 0, 0, 25)
  HeaderFrame.Parent = MainFrame
  HeaderFix.Name = "Fixer"
  HeaderFix.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  HeaderFix.BorderSizePixel = 0
  HeaderFix.Size = UDim2.new(1, 0, 0, 8)
  HeaderFix.Position = UDim2.new(0, 0, 0, 18)
  HeaderFix.Parent = HeaderFrame
  
  HeaderCorner.Parent = HeaderFrame
  HeaderCorner.CornerRadius = UDim.new(0, 10)
  
  local IconCorner = Instance.new('UICorner')
  Icon.Name = "Icon"
  Icon.BackgroundTransparency = 1
  Icon.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
  Icon.Size = UDim2.new(0, 20, 0, 20)
  Icon.Position = UDim2.new(0, 5, 0, 2.5)
  Icon.Parent = HeaderFrame
  
  IconCorner.Parent = Icon
  IconCorner.CornerRadius = UDim.new(0, 50)
  
  CloseIcon.Name = "Icon"
  CloseIcon.BackgroundTransparency = 1
  CloseIcon.Image = "rbxassetid://14397748477"
  CloseIcon.Size = UDim2.new(0, 20, 0, 20)
  CloseIcon.Position = UDim2.new(0, 225, 0, 2)
  CloseIcon.Parent = HeaderFrame
  CloseIcon.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
  end)
  
  Description.Name = "Description"
  Description.BackgroundTransparency = 1
  Description.Text = "MM2 COINFARM (QX)"
  Description.Size = UDim2.new(1, -4, 0, 0)
  Description.Position = UDim2.new(0, 4, 0, 55)
  Description.TextSize = 20
  Description.TextColor3 = Color3.fromRGB(255, 255, 255)
  Description.TextXAlignment = Enum.TextXAlignment.Center
  Description.Font = Enum.Font.Gotham
  Description.Parent = MainFrame
  
  GameName.Name = "GameName"
  GameName.BackgroundTransparency = 1
  GameName.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
  GameName.Size = UDim2.new(1, -4, 0, 0)
  GameName.Position = UDim2.new(0, 4, 0, 75)
  GameName.TextSize = 10
  GameName.TextColor3 = Color3.fromRGB(100, 100, 255)
  GameName.TextXAlignment = Enum.TextXAlignment.Center
  GameName.Font = Enum.Font.Gotham
  GameName.Parent = MainFrame
  
  local ButtonCorner = Instance.new('UICorner')
  MainButton.Name = "Toggle"
  MainButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  MainButton.BorderSizePixel = 0
  MainButton.Text = "Working: OFF"
  MainButton.TextColor3 = Color3.fromRGB(255, 100, 100)
  MainButton.TextSize = 10
  MainButton.Font = Enum.Font.Gotham
  MainButton.Size = UDim2.new(1, -20, 0, 30)
  MainButton.Position = UDim2.new(0, 10, 0, 110)
  MainButton.Parent = MainFrame
  
  ButtonCorner.Parent = MainButton
  ButtonCorner.CornerRadius = UDim.new(0, 10)
  
  local toggle = false
  
  MainButton.MouseButton1Click:Connect(function()
    toggle = not toggle
    if toggle then
      getgenv().coinFarm = true
      MainButton.Text = "Working: ON"
      MainButton.TextColor3 = Color3.fromRGB(100, 255, 100)
      coinFarm()
    else
      getgenv().coinFarm = false
      coinFarm()
      MainButton.Text = "Working: OFF"
      MainButton.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
  end)
end

end)

local Section = Tab:NewSection("AdminPanel🎛")

Section:NewButton("AdminPanel🎛", "", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/e89Mn4Ec'))()
end)

local Section = Tab:NewSection("MarsHUB🎃")

Section:NewButton("MarsHUB🎃", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1andonlymars/MarsHub/main/MM2"))() 
end)


