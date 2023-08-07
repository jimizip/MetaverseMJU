local C = script.Parent
local time = false

C.Touched:Connect(function(P)
	if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		local humanoid = Ch:FindFirstChild("Humanoid")
		if humanoid and not time then
			time = true
			C.Transparency = 1
			print(humanoid)
			print(humanoid.Health)
			print(C.Damage.Value)
			-- humanoid.Health -= C.Damage.Value 다른 rbxl 파일이 없어서 오류가 나는 것 같음
			wait(2)
			time = false
			C.Transparency = 0
		end
	end
end)