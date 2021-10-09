local newgui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local guiframe = Instance.new("Frame", newgui)
guiframe.Size = UDim2.new(0.1, 0, 0.05, 0)
guiframe.BackgroundTransparency = 0
guiframe.BorderColor3 = Color3.new(221, 255, 0)
guiframe.BackgroundColor3 = Color3.new(0, 0, 0)
guiframe.BorderSizePixel = 2
guiframe.Position = UDim2.new(0.05, 0, 0.9, 0)
local textlabeltop = Instance.new("TextLabel", guiframe)
textlabeltop.Size = UDim2.new(1, 0, 1, 0)
textlabeltop.BackgroundTransparency = 1
textlabeltop.Text = "F11 to see block outline, F12 to delete"
textlabeltop.TextColor3 = Color3.new(1, 1, 1)
game.Debris:AddItem(guiframe, 5)
textlabeltop.TextScaled = true

local mouse = game.Players.LocalPlayer:GetMouse()
local inputservice = game:GetService("UserInputService")


function F4(p)
	if p.KeyCode == Enum.KeyCode.F4 then 
		print(mouse.Target)
		local target = mouse.Target
		local newpart = Instance.new("Part", game.Workspace)
		newpart.Anchored = true
		newpart.CanCollide = false
		newpart.Transparency = 0.7
		newpart.Color = Color3.new(1, 0, 0)
		newpart.CFrame = target.CFrame
		newpart.Size = target.Size
		wait(3)
		newpart:Destroy()
	end
end

function F5(p)
	if p.KeyCode == Enum.KeyCode.F5 then
		local location = mouse.Target
		location:Destroy()
	end
end

inputservice.InputBegan:Connect(F4)
inputservice.InputBegan:Connect(F5)
