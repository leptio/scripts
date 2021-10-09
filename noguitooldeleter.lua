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
