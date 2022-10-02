if game.PlaceId == 8888615802 then

    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Frame_2 = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local TextLabel_2 = Instance.new("TextLabel")
    
    
    
    ScreenGui.Parent = game.CoreGui
    
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    Frame.Position = UDim2.new(0.0126382057, 0, 0.0691399723, 0)
    Frame.Size = UDim2.new(0, 452, 0, 47)
    
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 51)
    Frame_2.Position = UDim2.new(0.629248738, 0, 0.12309546, 0)
    Frame_2.Size = UDim2.new(0, 27, 0, 27)
    
    UICorner.Parent = Frame_2
    
    TextLabel.Parent = Frame_2
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(-9.77777767, 0, -0.444444358, 0)
    TextLabel.Size = UDim2.new(0, 254, 0, 50)
    TextLabel.Font = Enum.Font.PatrickHand
    TextLabel.Text = "Varomine Hub | Status : "
    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    
    UICorner_2.Parent = Frame
    
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(0.703539789, 0, -0.0638297871, 0)
    TextLabel_2.Size = UDim2.new(0, 140, 0, 50)
    TextLabel_2.Font = Enum.Font.TitilliumWeb
    TextLabel_2.Text = "[Beta Version]"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true
    
    -- Scripts:
    
    local function METRV_fake_script() -- Frame.Dragify 
        local script = Instance.new('LocalScript', Frame)
    
        local UserInputService = game:GetService("UserInputService")
        
        local gui = script.Parent
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        
        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
    end
    coroutine.wrap(METRV_fake_script)()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nekoxhubreal/Vape-ui/main/Auto%20Win%20Rainbow%20friends.lua"))()
    end