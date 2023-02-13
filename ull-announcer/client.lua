local QBCore = exports['qb-core']:GetCoreObject()
local startMessages = true
local enable = Config.enable
local timemin = Config.delay * 1000 * 60 / 2
local okokNotify = Config.okokNotify
local sendall = Config.sendall
local random = Config.random
local m1 = Config.time1 * 1000 / 2
local m2 = Config.time2 * 1000 / 2
local m3 = Config.time3 * 1000 / 2
local m4 = Config.time4 * 1000 / 2
local m5 = Config.time5 * 1000 / 2
local m6 = Config.time6 * 1000 / 2
local times = { Config.time1, Config.time2, Config.time3, Config.time4, Config.time5, Config.time6, }
local titles = { Config.title1, Config.title2, Config.title3, Config.title4, Config.title5, Config.title6, }
local messages = { Config.message1, Config.message2, Config.message3, Config.message4, Config.message5, Config.message6, }
local types = { Config.type1, Config.type2, Config.type3,Config.type4, Config.type5, Config.type6, }
local colors = { Config.color1, Config.color2, Config.color3, Config.color4, Config.color5, Config.color6, }

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    while true do
-- okoknotify
        if startMessages and enable and okokNotify and sendall then -- all
            random = false
            startMessages = false
            exports['okokNotify']:Alert(Config.title1, Config.message1, m1, Config.type1)
            exports['okokNotify']:Alert(Config.title2, Config.message2, m2, Config.type2)
            exports['okokNotify']:Alert(Config.title3, Config.message3, m3, Config.type3)
            exports['okokNotify']:Alert(Config.title4, Config.message4, m4, Config.type4)
            exports['okokNotify']:Alert(Config.title5, Config.message5, m5, Config.type5)
            exports['okokNotify']:Alert(Config.title6, Config.message6, m6, Config.type6)
        elseif startMessages and enable and okokNotify and random then -- random
            sendall = false
            local timeoutsec = times[math.random(1, #times)]
            local timeout = timeoutsec * 1000 / 2
            local title = titles[math.random(1, #titles)]
            local message = messages[math.random(1, #messages)]            
            local atype = types[math.random(1, #types)]
            startMessages = false
            exports['okokNotify']:Alert(title, message, timeout, atype)
        elseif startMessages and enable and okokNotify then -- first
            sendall = false
            random = false
            startMessages = false
            exports['okokNotify']:Alert(Config.title1, Config.message1, m1, Config.type1)
-- qbcore
        elseif startMessages and enable and sendall then -- all
            okokNotify = false
            random = false           
            startMessages = false
            QBCore.Functions.Notify(Config.message1, Config.color1)
            QBCore.Functions.Notify(Config.message2, Config.color2)
            QBCore.Functions.Notify(Config.message3, Config.color3)
            QBCore.Functions.Notify(Config.message4, Config.color4)
            QBCore.Functions.Notify(Config.message5, Config.color5)
            QBCore.Functions.Notify(Config.message6, Config.color6) 
        elseif startMessages and enable and random then -- random
            okokNotify = false
            sendall = false
            local message = messages[math.random(1, #messages)] 
            local color = colors[math.random(1, #colors)] 
            startMessages = false
            QBCore.Functions.Notify(message, color) 
        elseif startMessages and enable then -- first
            okokNotify = false
            sendall = false
            random = false
            startMessages = false
            QBCore.Functions.Notify(Config.message1, Config.color1) 
        elseif not startMessages then
        startMessages = true
        end
        Citizen.Wait(timemin)
    end
end)

-- commands
RegisterNetEvent("announcer:toggleactive", function() -- toggle active 
    if enable and okokNotify then
        enable = false
        exports['okokNotify']:Alert('Announcer', 'turned off', 3000, 'error')
    elseif not enable and okokNotify then
        enable = true
        exports['okokNotify']:Alert('Announcer', 'turned on', 3000, 'success')
    elseif enable then
        enable = false
        QBCore.Functions.Notify("Announcer turned off", "red")
    elseif not enable then
        enable = true
        QBCore.Functions.Notify("Announcer turned on", "green")
    end
end)

RegisterNetEvent("announcer:toggleall", function() -- toggle all 
    if sendall and enable and okokNotify then
        sendall = false
        exports['okokNotify']:Alert('Announcer', 'will send only 1 message', 3000, 'error')
    elseif not sendall and enable and okokNotify then
        sendall = true
        exports['okokNotify']:Alert('Announcer', 'will send all messages', 3000, 'success')
    elseif sendall and enable then
        sendall = false
        QBCore.Functions.Notify("Announcer sending only 1 message", "red")
    elseif not sendall and enable then
        sendall = true
        QBCore.Functions.Notify("Announcer sending all messages", "green")
    end
end)

RegisterNetEvent("announcer:togglerandom", function() -- toggle random 
    if random and enable and okokNotify then
        random = false
        exports['okokNotify']:Alert('Announcer', 'will send first message', 3000, 'error')
    elseif not random and enable and okokNotify then
        random = true
        exports['okokNotify']:Alert('Announcer', 'will send random message', 3000, 'success')
    elseif random and enable then
        random = false
        QBCore.Functions.Notify("Announcer sending first message", "red")
    elseif not random and enable then
        random = true
        QBCore.Functions.Notify("Announcer sending random messages", "green")
    end
end)

RegisterNetEvent("announcer:toggleokok", function() -- toggle okokNotify 
    if enable and okokNotify then
        okokNotify = false
        QBCore.Functions.Notify("Announcer sending QBcore messages", "red")
    elseif enable then
        okokNotify = true
        exports['okokNotify']:Alert('Announcer', 'will send okokNotify messages', 3000, 'success')
    end
end)

RegisterNetEvent("announcer:timeing", function() -- display delay time
    if enable and okokNotify then
        exports['okokNotify']:Alert('Announcer', 'delay time: '..Config.delay..' min', 3000, 'success')
    elseif not enable and okokNotify then
        exports['okokNotify']:Alert('Announcer', 'turned off', 3000, 'error')
    elseif enable then
        QBCore.Functions.Notify('delay time: '..Config.delay..' min', "red")
    elseif not enable then
        QBCore.Functions.Notify("Announcer turned off", "red")
    end
end)
