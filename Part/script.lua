local Part = script.Parent

Part.Touched:Connect(function(P)
	--print(P.Parent)
	--print(P.Parent.Humanoid)
	--Ch = P:FindFirstAncestorWhichIsA("Model") 캐릭터 미리 선언/ if문을 Ch로 바꾸고 if문 안에 Ch를 지워도댐.
	if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		local humanoid = Ch:FindFirstChild("Humanoid")
		if humanoid then
			print(humanoid)
			print(humanoid.JumpHeight)
			print(humanoid.WalkSpeed)
			print(Part:GetAttribute("Jump"))
			print(Part:GetAttribute("Speed"))
			Part:SetAttribute("Value", 10)
			print(Part:GetAttribute("Value"))
			humanoid.JumpHeight = Part:GetAttribute("Jump")
			humanoid.WalkSpeed = Part:GetAttribute("Speed")
			local Part = script.Parent
			print(Part.EnhanceJump.Value)
			print(Part.EnhanceSpeed.Value)
			humanoid.JumpHeight = Part.EnhJump.Value
			humanoid.WalkSpeed = Part.EnhanceSpeed.Value
		end
	end
end)