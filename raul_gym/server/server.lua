ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('rsx_gym:comprarpowerade', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local dinero = xPlayer.getMoney()
    local precio = 50
    if dinero >= precio then
        TriggerClientEvent('esx:showNotification', source, 'Has comprado un Powerade')
        xPlayer.addInventoryItem('powerade', 1)
        xPlayer.removeMoney(precio)
    else
        TriggerClientEvent('esx:showNotification', source, 'No tienes dinero') 
    end
end)

RegisterServerEvent('rsx_gym:comprarproteinshake', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local dinero = xPlayer.getMoney()
    local precio = 80
    if dinero >= precio then
        TriggerClientEvent('esx:showNotification', source, 'Has comprado un batido de proteinas')
        xPlayer.addInventoryItem('proteinshake', 1)
        xPlayer.removeMoney(precio)
    else
        TriggerClientEvent('esx:showNotification', source, 'No tienes dinero') 
    end
end)
