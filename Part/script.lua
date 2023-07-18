local Part = script.Parent

Part.Touched:Connect(function(Params)
  if P:FindFirstAncestorWhichIsA("Model") then
		local Ch = P:FindFirstAncestorWhichIsA("Model")
		if Ch.Humanoid then
			print(Ch)
		end
	end
end)