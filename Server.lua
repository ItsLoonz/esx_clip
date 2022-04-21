ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)



RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('cargador', function(source)
	TriggerClientEvent('esx_clip:clipcli', source)
end)


-- SI QUEREIS CAMBIAR EL NOMBRE DE EL ITEM, CAMBIAD LA LÍNEA 15, Y REMPLAZAIS 'cargador' POR LO QUE QUERAIS MODIFICAR. 
