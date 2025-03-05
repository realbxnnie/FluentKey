--[[
			 FluentKey
   A Key System module for Scripts.
]]

export type FluentWindowArguments = {
	Title: string,
	Key: string,
	KeyCorrectAction: () -> (),
	Note: string,
	GrabKeyFromRaw: boolean
}

local Program = {};
function Program:MakeWindow(Settings: FluentKeyWindowArguments)
	local key = Settings.Key;
	if Settings.GrabKeyFromRaw then
		key = game:HttpGet(key);
	end;
	
	local KeySystem = Instance.new("ScreenGui")
	
	local Frame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Close = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local TitleNote = Instance.new("TextLabel")
	local Note = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local CheckKey = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local Key = Instance.new("TextBox")
	local UICorner_4 = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	
	KeySystem.Name = "FluentKey"
	KeySystem.IgnoreGuiInset = true
	KeySystem.ResetOnSpawn = false
	KeySystem.DisplayOrder = 2283572371
	KeySystem.Parent = (gethui and gethui()) or (game.CoreGui and game.CoreGui)

	Frame.Parent = KeySystem
	Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.300712496, 0, 0.322526723, 0)
	Frame.Size = UDim2.new(0.397527248, 0, 0.353275418, 0)

	Title.Name = "Title"
	Title.Parent = Frame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0263574049, 0, 0.0331125781, 0)
	Title.Size = UDim2.new(0.947285116, 0, 0.0823085234, 0)
	Title.Font = Enum.Font.RobotoMono
	Title.Text = Settings.Title or "Key System"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Close.Name = "Close"
	Close.Parent = Frame
	Close.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.927780628, 0, 0.0331125781, 0)
	Close.Size = UDim2.new(0.0458619371, 0, 0.0823085234, 0)
	Close.AutoButtonColor = false
	Close.Font = Enum.Font.RobotoMono
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextScaled = true
	Close.TextSize = 14.000
	Close.TextWrapped = true

	UICorner.CornerRadius = UDim.new(0, 7)
	UICorner.Parent = Close

	UICorner_2.CornerRadius = UDim.new(0, 12)
	UICorner_2.Parent = Frame

	TitleNote.Name = "TitleNote"
	TitleNote.Parent = Frame
	TitleNote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleNote.BackgroundTransparency = 1.000
	TitleNote.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TitleNote.BorderSizePixel = 0
	TitleNote.Position = UDim2.new(0.0263574049, 0, 0.302743584, 0)
	TitleNote.Size = UDim2.new(0.248813942, 0, 0.0823085234, 0)
	TitleNote.Font = Enum.Font.RobotoMono
	TitleNote.Text = "Note:"
	TitleNote.TextColor3 = Color3.fromRGB(255, 255, 255)
	TitleNote.TextScaled = true
	TitleNote.TextSize = 14.000
	TitleNote.TextWrapped = true
	TitleNote.TextXAlignment = Enum.TextXAlignment.Left

	Note.Name = "Note"
	Note.Parent = Frame
	Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Note.BackgroundTransparency = 1.000
	Note.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Note.BorderSizePixel = 0
	Note.Position = UDim2.new(0.0263574049, 0, 0.38789022, 0)
	Note.Size = UDim2.new(0.306800246, 0, 0.304635853, 0)
	Note.Font = Enum.Font.RobotoMono
	Note.Text = Settings.Note or "Not provided"
	Note.TextColor3 = Color3.fromRGB(255, 255, 255)
	Note.TextScaled = true
	Note.TextSize = 14.000
	Note.TextWrapped = true
	Note.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = Note
	UITextSizeConstraint.MaxTextSize = 64

	CheckKey.Name = "CheckKey"
	CheckKey.Parent = Frame
	CheckKey.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKey.BorderSizePixel = 0
	CheckKey.Position = UDim2.new(0.360487372, 0, 0.550615013, 0)
	CheckKey.Size = UDim2.new(0.278416187, 0, 0.11352884, 0)
	CheckKey.AutoButtonColor = false
	CheckKey.Font = Enum.Font.RobotoMono
	CheckKey.Text = "Check Key"
	CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.TextScaled = true
	CheckKey.TextSize = 14.000
	CheckKey.TextWrapped = true
	CheckKey.MouseButton1Click:Connect(function()
		if Key.Text == key then
			KeySystem:Destroy()
			Settings.KeyCorrectAction()
		end
	end)

	UICorner_3.CornerRadius = UDim.new(0, 7)
	UICorner_3.Parent = CheckKey

	Key.Name = "Key"
	Key.Parent = Frame
	Key.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key.BorderSizePixel = 0
	Key.Position = UDim2.new(0.392116278, 0, 0.413434327, 0)
	Key.Size = UDim2.new(0.212522686, 0, 0.11352884, 0)
	Key.Font = Enum.Font.RobotoMono
	Key.PlaceholderText = "Enter Key..."
	Key.Text = ""
	Key.TextColor3 = Color3.fromRGB(255, 255, 255)
	Key.TextScaled = true
	Key.TextSize = 14.000
	Key.TextWrapped = true

	UICorner_4.CornerRadius = UDim.new(0, 7)
	UICorner_4.Parent = Key

	UIAspectRatioConstraint.Parent = Frame
	UIAspectRatioConstraint.AspectRatio = 1.795
end

return Program
