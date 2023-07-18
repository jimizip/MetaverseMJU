local Part = script.Parent

Part.Touched:Connect(function(Params)
  if Params:FindFirstAncestorWhichIsA("Model") then
		local Ch = Params:FindFirstAncestorWhichIsA("Model")
		if Ch.Humanoid then
			print(Ch)
		end
	end
end)