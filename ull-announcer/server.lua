if Config.degub then print("^1Announcer ^4v^41^4.^42^4.^40 ^7auto notify ^4made by ^1UnLuckyLust^7") end
local QBCore = exports['qb-core']:GetCoreObject()
local active = Config.commandactive
local all = Config.commandall
local random = Config.commandrandom
local okok = Config.commandokok
local delay = Config.commanddelay

if Config.commands then
QBCore.Commands.Add(active, 'disable/enable automated announcements', {}, false, function(source, _)
    TriggerClientEvent('announcer:toggleactive', source)
end, Config.commandPermission)

QBCore.Commands.Add(all, 'disable/enable all announcer messages', {}, false, function(source, _)
    TriggerClientEvent('announcer:toggleall', source)
end, Config.commandPermission)

QBCore.Commands.Add(random, 'disable/enable random announcer messages', {}, false, function(source, _)
    TriggerClientEvent('announcer:togglerandom', source)
end, Config.commandPermission)

QBCore.Commands.Add(okok, 'disable/enable okokNotify announcer messages', {}, false, function(source, _)
    TriggerClientEvent('announcer:toggleokok', source)
end, Config.commandPermission)

QBCore.Commands.Add(delay,'Current time between messages ', {}, false, function(source, _)
    TriggerClientEvent('announcer:timeing', source)
end, Config.commandPermission)
end
