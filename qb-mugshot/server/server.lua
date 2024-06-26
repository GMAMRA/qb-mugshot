local QBCore = exports['qb-core']:GetCoreObject()

local MugShots = {}

RegisterNetEvent('qb-mugshot:server:triggerSuspect', function(suspect)
    TriggerClientEvent('qb-mugshot:client:trigger', suspect, suspect)
end)

RegisterNetEvent('qb-mugshot:server:MDTupload', function(citizenid, MugShotURLs)
    MugShots[citizenid] = MugShotURLs
    if Config.CQCMDT then
        TriggerEvent('cqc-mdt:server:updateMugShotForCitizen',citizenid, MugShotURLs)
    end
end)

--Allows external resources to pull most recent mugshot urls for a given citizen id
QBCore.Functions.CreateCallback(function(source, cb, citizenid) 
    cb(MugShots[citizenid])
end)