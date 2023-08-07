local StartPart = workspace.Teleport.Start
local DestPart = workspace.Teleport.Dest
local time = false

StartPart.Touched:Connect(function(P)
	if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		local humanoid = Ch:FindFirstChild("Humanoid")
		if humanoid and not time then
			time = true
			print(humanoid)
			print("START")
			print(Ch.HumanoidRootPart)
			Ch:SetPrimaryPartCFrame(DestPart.CFrame)
			time = false
		end
	end
end)

DestPart.Touched:Connect(function(P)
	if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		local humanoid = Ch:FindFirstChild("Humanoid")
		if humanoid and not time then
			time = true
			print(humanoid)
			print("DEST")
			time = false
		end
	end
end)