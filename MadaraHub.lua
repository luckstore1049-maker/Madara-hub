-- Madara Hub v1.0
-- Script básico de ESP e funções para Roblox

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Função de ESP simples
local function createESP(player)
    if player == LocalPlayer then return end
    local box = Instance.new("BoxHandleAdornment")
    box.Adornee = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    box.Size = Vector3.new(4,6,2)
    box.Color3 = Color3.fromRGB(255,0,0)
    box.AlwaysOnTop = true
    box.ZIndex = 10
    box.Parent = player.Character
end

-- Ativa ESP para todos os jogadores
for _, player in pairs(Players:GetPlayers()) do
    createESP(player)
end

-- ESP para novos jogadores que entrarem
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESP(player)
    end)
end)

-- Função de exemplo para auto jump
local function autoJump()
    RunService.RenderStepped:Connect(function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.Jump = true
        end
    end)
end

-- Ativar auto jump
autoJump()

print("Madara Hub carregado com sucesso!")
