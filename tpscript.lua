while wait(2) do
	for i,v in pairs(game.Players:GetChildren()) do
		wait(0.05)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Position = v.Character.HumanoidRootPart.Position
	end
end
