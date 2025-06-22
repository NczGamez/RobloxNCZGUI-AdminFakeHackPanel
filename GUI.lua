-- Gui to Lua
-- Version: 3.2

-- Instances:

local nczgui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local cframehackui = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")

--Properties:

nczgui.Name = "nczgui"
nczgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
nczgui.Enabled = false
nczgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = nczgui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.30444786, 0, 0.124371856, 0)
Frame.Size = UDim2.new(0, 579, 0, 598)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 579, 0, 72)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "NCZGUI V1"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.210702345, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "CFRAME GUI OPENER"
TextButton.TextColor3 = Color3.fromRGB(0, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

cframehackui.Name = "cframehackui"
cframehackui.Parent = Frame
cframehackui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cframehackui.BorderColor3 = Color3.fromRGB(0, 0, 0)
cframehackui.BorderSizePixel = 0
cframehackui.Position = UDim2.new(0.00565687334, 0, 0.57754916, 0)
cframehackui.Size = UDim2.new(0, 571, 0, 261)
cframehackui.Visible = false

TextLabel_2.Parent = cframehackui
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 579, 0, 72)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "NCZ'S CFRAME HACKS"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton_2.Parent = cframehackui
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.210702345, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "CFRAME JUMP"
TextButton_2.TextColor3 = Color3.fromRGB(0, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

-- Scripts:

local function GTJIAEN_fake_script() -- Frame.UIDrag 
	local script = Instance.new('LocalScript', Frame)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(GTJIAEN_fake_script)()
local function WNAF_fake_script() -- TextButton.Open/Close (PUT ME IN A TEXTBUTTON) 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:connect(function()
		script.Parent.Parent.cframehackui.Visible = not script.Parent.Parent.cframehackui.Visible
	end)
	
	--                                                               ^
	--]]	Change "Frame701" to the name of the frame                 ^                      
end
coroutine.wrap(WNAF_fake_script)()
local function GBAHOC_fake_script() -- cframehackui.UIDrag 
	local script = Instance.new('LocalScript', cframehackui)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(GBAHOC_fake_script)()
local function VXOY_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		local fly = false
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		
		if  fly == false then
			fly = true
			if fly == true then
				plr.Character.HumanoidRootPart.Velocity = workspace.CurrentCamera.CFrame.LookVector*-35 + Vector3.new(0,100,0)
			end
		end
	end)
end
coroutine.wrap(VXOY_fake_script)()

-- This is going to be ass because im shit at lua programming, i dont even think you can load this in tbf
