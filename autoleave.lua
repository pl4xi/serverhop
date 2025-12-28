local Players = game:GetService("Players")
local queueteleport = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)

task.spawn(function()
    print('Started session timer...')

    task.wait(20)
		
    writefile("timer.txt", "20")
    print('Signal written to file.')

    task.wait(4)
    
    if isfile("timer.txt") then
        delfile("timer.txt")
        print('Signal file deleted.')
    end
end)

local TeleportCheck = false
Players.LocalPlayer.OnTeleport:Connect(function(State)
    if (not TeleportCheck) and queueteleport then
        TeleportCheck = true
        queueteleport("loadstring(game:HttpGet('loadstring(game:HttpGet('https://raw.githubusercontent.com/skiddyshit/autoleave/refs/heads/main/autoleave.lua'))()")
    end
end)
