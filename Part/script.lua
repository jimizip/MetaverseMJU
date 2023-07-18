local Part = script.Parent

Part.Touched:Connect(function(Params)
  print(P.Parent)
  print(P.Parent.Humanoid)
end)