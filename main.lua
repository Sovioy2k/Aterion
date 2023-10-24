if game.PlaceId == 13772394625 then


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Aterion", HidePremium = false, IntroText = "Aterion Hub By Sovio", SaveConfig = true, ConfigFolder = "Blade Ball"})  

local BladeTab = Window:MakeTab({
	Name = "Blade Ball",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.Parry = true

_G.Tp = true

function Tp()
        while _G.Tp == true do
getgenv().god = true
while getgenv().god and task.wait() do
    for _,ball in next, workspace.Balls:GetChildren() do
        if ball then
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, ball.Position)
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = ball.CFrame * CFrame.new(0, 0, (ball.Velocity).Magnitude * -0.5)
                end
            end
        end
    end
end
            wait(.0001)
        end
    end


BladeTab:AddToggle({
	Name = "Auto Tp",
	Default = false,
	Callback = function(Value)
		 _G.Tp = Value
	end    
})
        
BladeTab:AddToggle({
	Name = "Auto Parry",
	Default = false,
	Callback = function(Value)
		_G.Parry = Value
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

_G.Freeze = true

function Freeze()
        while _G.Freeze == true do
            getgenv().stop = not stop
while game:GetService("RunService").RenderStepped:wait() do
   if not stop then break end
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-287, 239, 154)
   game:GetService("ReplicatedStorage").Remotes.Freeze:FireServer()
end
            wait(.0001)
        end
    end
BladeTab:AddToggle({
	Name = "Freeze",
	Default = false,
	Callback = function(Value)
		_G.Freeze = Value
        Freeze()
	end    
})









end
OrionLib:Init()
