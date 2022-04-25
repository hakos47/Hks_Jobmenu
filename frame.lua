
HksCore = exports['qb-core']:GetCoreObject()



AddEventHandler('HksCore:Client:OnPlayerLoaded', function()
    local Player = HksCore.Functions.GetPlayerData()
    print (Player.job.name)
  
end)


RegisterNetEvent('HksCore:Client:OnJobUpdate', function(JobInfo)
    HksCore.Functions.GetPlayerData().job = JobInfo
end)

RegisterCommand('jobmenu', function()
    job = HksCore.Functions.GetPlayerData().job.name

    if job == "police" then
        TriggerEvent('police:menu:police')
    elseif job == "ambulance" then
        TriggerEvent('ambulance:menu:ambulance')
    elseif job == "mechanic" then
        TriggerEvent('mechanic:menu:mechanic')
    elseif job == "taxi" then
        TriggerEvent('taxi:menu:taxi')
    else
        HksCore.Functions.Notify(' No tienes acceso a este menu', "error")
    end

end)

RegisterKeyMapping('jobmenu', 'menu de EMS', 'keyboard', 'F5')

RegisterNetEvent('panic:hks', function()
  
    job = HksCore.Functions.GetPlayerData().job.label
    ExecuteCommand('entorno Alguien de la faccion '..job..' a pulsado el botón del panico')

end)

