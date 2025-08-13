-- Madara Hub Base Completa
-- GUI com botões, cores, ícones e placeholders para funções

-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Criar ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MadaraHub"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- Frame Principal
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Título
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Title.Text = "MADARA HUB"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 25
Title.Parent = MainFrame

-- Função para criar botões
local function createButton(name, iconText, callback)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0.9, 0, 0, 40)
    Button.Position = UDim2.new(0.05, 0, 0, (#MainFrame:GetChildren()-2)*45)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Button.BorderSizePixel = 0
    Button.Text = iconText.." "..name
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.Gotham
    Button.TextSize = 20
    Button.Parent = MainFrame

    Button.MouseButton1Click:Connect(callback)
end

-- Botão Pular
createButton("Pular", "⬆️", function()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.Jump = true
    end
end)

-- Botão ESP Placeholder
createButton("ESP Team Check", "👁️", function()
    print("ESP Team Check ativado! Adicione seu script aqui.")
end)

-- Botão Speed Placeholder
createButton("Speed", "⚡", function()
    print("Speed ativado! Adicione seu script aqui.")
end)

-- Botão Fly Placeholder
createButton("Fly", "🕊️", function()
    print("Fly ativado! Adicione seu script aqui.")
end)

-- Botão Extra Placeholder
createButton("Extra", "✨", function()
    print("Função extra ativada! Adicione seu script aqui.")
end)
