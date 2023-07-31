local C = workspace:WaitForChild("C")
local time = false

C.Touched:Connect(function(P)
	if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		local humanoid = Ch:FindFirstChild("Humanoid")
		if humanoid and not time then
			time = true
			print(humanoid)
			print(humanoid.Health)
			print(C.Damage.Value)
			-- humanoid.Health -= C.Damage.Value
			wait(2)
			time = false
		end
	end
end)