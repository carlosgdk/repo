while wait(1) do
    for _, player in next, game:GetService("Players"):GetChildren() do
        if player.Character and player.Name ~= game.Players.LocalPlayer.Name then
            if player.Character:FindFirstChild("Head") then
                player.Character.Head.CanCollide = false
                player.Character.Head.Size = Vector3.new(6, 6, 6)

                if player.Character.Head:FindFirstChild("Mesh") then
                    player.Character.Head.Mesh:Destroy()
                end

                player.Character.Head.Transparency = 0.5
            end
        end
    end
end
