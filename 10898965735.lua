function Mine()
    wait(0.1)
    game:GetService("ReplicatedStorage").Remotes.mineEvent:FireServer("Mine")
end

function Upgrade()
    game:GetService("ReplicatedStorage").Remotes.upgradeEvent:FireServer("Cooldown")
end

function Upgrade_Blocks()
    game:GetService("ReplicatedStorage").Remotes.upgradeEvent:FireServer("Dig")
end

function Rebirth()
    game:GetService("ReplicatedStorage").Remotes.rebirthEvent:FireServer("Rebirth")
end

function AFK()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end



local Library = loadstring(game:HttpGet('https://pastebin.com/raw/P0VZZ8zM'))()

Window = Library:Create({
	Name = "Mythical Hub [Beta Edition]",
	Footer = "By Bruh…..#8751",
	ToggleKey = Enum.KeyCode.RightShift,
	LoadedCallback = function()
		Window:TaskBarOnly(false)
		Library:Notify({
			Name = "Mythical Hub - Mine Racer!",
			Text = "loadded!",
			Icon = "rbxassetid://11401835376",
			Duration = math.huge,
		})
	end,
	ToggledRelativeYOffset = 0
})

Window:ChangeTogglekey(Enum.KeyCode.RightControl)

local Tab = Window:Tab({
	Name = "Main",
	Icon = "rbxassetid://11396131982",
	Color = Color3.new(0.474509, 0.474509, 0.474509)
})

local Section1 = Tab:Section({
	Name = "Main"
})

local Section6 = Tab:Section({
	Name = "Obby"
})

local Section2 = Tab:Section({
	Name = "Easy Eggs"
})

local Section4 = Tab:Section({
	Name = "Pro Eggs"
})

local Section5 = Tab:Section({
	Name = "Super Eggs"
})



Section1:Toggle({
	Name = "Auto Mine",
	Default = false,
	Callback = function(value) 
		_G.Auto_Mine = value
	end
})

Section1:Toggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(value) 
		_G.Auto_Rebirth = value
	end
})

Section2:Dropdown({
	Name = "Select Eggs",
	Items = {"0","1","2","3"},
	Callback = function(value)
		_G.Eggs_Selected_eZ = value
	end
})

Section2:Toggle({
	Name = "Auto Open Eggs",
	Default = false,
	Callback = function(value) 
		_G.Auto_OPEN_EZ = value
	end
})

Section4:Dropdown({
	Name = "Select Eggs",
	Items = {"4","5","6","7"},
	Callback = function(value)
		_G.Eggs_Selected_Pro = value
	end
})

Section4:Toggle({
	Name = "Auto Open Eggs",
	Default = false,
	Callback = function(value) 
		_G.Auto_OPEN_PRO = value
	end
})

Section5:Dropdown({
	Name = "Select Eggs",
	Items = {"8","9","10","11"},
	Callback = function(value)
		_G.Eggs_Selected_Super = value
	end
})

Section5:Toggle({
	Name = "Auto Open Eggs",
	Default = false,
	Callback = function(value) 
		_G.Auto_OPEN_Super = value
	end
})

Section6:Button({
	Name = "Complete Easy Obby",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.8802605, 13.7778559, -575.687256, 0.999819696, 4.69970232e-08, 0.0189877711, -4.79715503e-08, 1, 5.08685574e-08, -0.0189877711, -5.1770261e-08, 0.999819696)
    end
})

Section6:Button({
	Name = "Complete Hard Obby",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.79408169, 44.7586479, 499.595917, -0.990690112, -4.46504345e-09, 0.136136189, -3.55643359e-09, 1, 6.91748303e-09, -0.136136189, 6.36892272e-09, -0.990690112)
    end
})

local Tab2 = Window:Tab({
	Name = "Upgrade",
	Icon = "rbxassetid://6031225815",
	Color = Color3.new(0.474509, 0.474509, 0.474509)
})

local Section3 = Tab2:Section({
	Name = "Upgrade"
})

Section3:Toggle({
	Name = "Auto Upgrade Cooldown",
	Default = false,
	Callback = function(value) 
		_G.Upgrade = value
	end
})

Section3:Toggle({
	Name = "Auto Upgrade Blocks",
	Default = false,
	Callback = function(value) 
		_G.Upgrade_Blocks = value
	end
})

local AFK = Window:Tab({
	Name = "Settings",
	Icon = "rbxassetid://6031280882",
	Color = Color3.new(0.474509, 0.474509, 0.474509)
})

local ANTI = AFK:Section({
	Name = "ANTI-AFK"
})

ANTI:Toggle({
	Name = "ANTI-AFK",
	Default = false,
	Callback = function(value) 
		_G.Anti_Afk = value
	end
})

while wait() do
    pcall(function()
        if _G.Auto_Mine then
            Mine()
        end
        if _G.Upgrade then
            Upgrade()
        end
        if _G.Upgrade_Blocks then
            Upgrade_Blocks()
        end
        if _G.Auto_Rebirth then
            Rebirth()
        end
        if _G.Auto_OPEN_EZ then
            local A_1 = "Open"
            local A_2 = game:GetService("Workspace").Eggs[_G.Eggs_Selected_eZ]
            local Event = game:GetService("ReplicatedStorage").Remotes.requestEgg
            Event:FireServer(A_1, A_2)
        end
        if _G.Auto_OPEN_PRO then
            local A_1 = "Open"
            local A_2 = game:GetService("Workspace").Eggs[_G.Eggs_Selected_Pro]
            local Event = game:GetService("ReplicatedStorage").Remotes.requestEgg
            Event:FireServer(A_1, A_2)
        end
        if _G.Auto_OPEN_Super then
            local A_1 = "Open"
            local A_2 = game:GetService("Workspace").Eggs[_G.Eggs_Selected_Super]
            local Event = game:GetService("ReplicatedStorage").Remotes.requestEgg
            Event:FireServer(A_1, A_2)
        end
		if _G.Anti_Afk then
			AFK()
		end
    end)
end