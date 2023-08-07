-- ThreeInfoScript
-- 버튼의 선택에 따라 제공하는 정보가 달라지는 기능을 구현한다.

----------------------------------------------------------------------------------------------------
-- Gui를 활성화하기 위한 토대
----------------------------------------------------------------------------------------------------
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EventFolder = ReplicatedStorage:WaitForChild("Events")
local ServerToClient = EventFolder:WaitForChild("ServerToClient")
local CameraTween1 = ServerToClient:WaitForChild("CameraTween1")
local ThreeInfoGui = script.Parent
local FirstButton = ThreeInfoGui:WaitForChild("FirstButtonFrame"):WaitForChild("FirstButton")
local SecondButton = ThreeInfoGui:WaitForChild("SecondButtonFrame"):WaitForChild("SecondButton")
local ThirdButton = ThreeInfoGui:WaitForChild("ThirdButtonFrame"):WaitForChild("ThirdButton")
local CancelButton = ThreeInfoGui:WaitForChild("CancelButtonFrame"):WaitForChild("CancelButton")
local TweenService = game:GetService("TweenService")
local CurrentCamera = workspace.CurrentCamera
local TweenInfo_A = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local TweenProperty_A = {CFrame = CFrame.new(-35.6435547, 0.641720235, 65.2206116, -0.999123871, 0.00306514511, 0.0417404138, -0, 0.997314692, -0.073236309, -0.0418528058, -0.0731721446, -0.996440768)}
local Tween_A = TweenService:Create(CurrentCamera, TweenInfo_A, TweenProperty_A)
local TweenInfo_B = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local TweenProperty_B = {CFrame = CFrame.new(-47.2892952, 1.81832695, 59.7285423, -1, 2.40956797e-06, -1.90734772e-05, 2.27373675e-13, 0.992114544, 0.12533462, 1.92250773e-05, 0.12533462, -0.992114544)}
local Tween_B = TweenService:Create(CurrentCamera, TweenInfo_B, TweenProperty_B)
local TweenInfo_C = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local TweenProperty_C = {CFrame = CFrame.new(-56.8080521, 1.7678715, 56.9292145, -0.999902785, -0.000657153956, 0.013935091, -0, 0.998890102, 0.0471058562, -0.0139505789, 0.0471012779, -0.998792768)}
local Tween_C = TweenService:Create(CurrentCamera, TweenInfo_C, TweenProperty_C)

CameraTween1.OnClientEvent:Connect(function(ProximityPrompt)
	print("Proximity Prompt Event in", script.Name)
	ThreeInfoGui.Enabled = true
	CurrentCamera.CameraType = Enum.CameraType.Scriptable
	Tween_A:Play()
end)

FirstButton.MouseButton1Click:Connect(function()
	Tween_A:Play()
end)

SecondButton.MouseButton1Click:Connect(function()
	Tween_B:Play()
end)

ThirdButton.MouseButton1Click:Connect(function()
	Tween_C:Play()
end)

CancelButton.MouseButton1Click:Connect(function()
	CurrentCamera.CameraType = Enum.CameraType.Custom
	ThreeInfoGui.Enabled = false
end)
----------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------
-- TweenService 연습
-- Position을 이용한 Part의 이동
----------------------------------------------------------------------------------------------------
--local TweenService = game:GetService("TweenService")
--local TweenPart_A = workspace:WaitForChild("CameraTween"):WaitForChild("TweenPart")
--local TweenInfo_A = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true, 0)
--local TweenProperty_A = {Position = Vector3.new(32, 6.5, 34)}
--local Tween_A = TweenService:Create(TweenPart_A, TweenInfo_A, TweenProperty_A)
--wait(3)
--Tween_A:Play()
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- TweenService 연습
-- Cframe을 이용한 Camera의 이동과 Camera의 Type 설정
----------------------------------------------------------------------------------------------------
--local TweenService = game:GetService("TweenService")
--local CurrentCamera = workspace.CurrentCamera
--local TweenInfo_A = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
--local TweenProperty_A = {CFrame = CFrame.new(-3.69295406, 13.1619205, 34.3964691, 0.650476456, -0.366782218, 0.665094852, 1.49011594e-08, 0.875670433, 0.482909143, -0.759526372, -0.314121038, 0.569603026)}
--local Tween_A = TweenService:Create(CurrentCamera, TweenInfo_A, TweenProperty_A)
--wait(3)
--CurrentCamera.CameraType = Enum.CameraType.Scriptable
--Tween_A:Play()
----------------------------------------------------------------------------------------------------