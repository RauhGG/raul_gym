ESX = exports["es_extended"]:getSharedObject()

-- Blip

local blips = {
	{title="GYM", colour=9, id=311, x = -1201.88, y = -1570.146, z = 4.608062}
}


CreateThread(function()
	for _, info in pairs(blips) do
	  info.blip = AddBlipForCoord(info.x, info.y, info.z)
	  SetBlipSprite(info.blip, info.id)
	  SetBlipDisplay(info.blip, 4)
	  SetBlipScale(info.blip, 0.5)
	  SetBlipColour(info.blip, info.colour)
	  SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString(info.title)
	  EndTextCommandSetBlipName(info.blip)
	end
 end)


-- Shop
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1195.129, -1577.491, 4.604112)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Tienda", vector3(-1195.129, -1577.491, 4.604112))
			if IsControlJustPressed(0, 38) then
				tienda()
				print('funsiona')
				end
			end
		Wait(_sleep)
	end	
end)

tienda = function()
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'comprar',{
        title = 'Confirmar',
		align = 'center',
		elements = {
			{label = 'Comprar Powerade 50$', value = 'powerade'},
            {label = 'Comprar batido de proteinas 80$', value = 'proteinshake'},
		}
	},
	function(data, menu)
		local val = data.current.value
		
		if val == 'powerade' then
            TriggerServerEvent('rsx_gym:comprarpowerade')
        elseif val == 'proteinshake' then
			TriggerServerEvent('rsx_gym:comprarproteinshake')

		end
	end,
	function(data, menu)
		menu.close()
	end)
end



CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		for k, v in pairs(Config.flexiones) do
			if #(plycoords - v) < 1 then
				_sleep = 0
				ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer flexiones", v)
				if IsControlJustPressed(0, 38) then
					ESX.ShowNotification("Preparando el ejercicio...")
					Citizen.Wait(1000)					
						TaskStartScenarioInPlace(ply, "world_human_push_ups", 0, true)
						Citizen.Wait(30000)
						exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
						exports["gamz-skillsystem"]:UpdateSkill("Resistencia", 1)
						ClearPedTasksImmediately(ply)
					end
			end
		end
		Wait(_sleep)
	end
end)

CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		for k, v in pairs(Config.dominadas) do
			if #(plycoords - v) < 1 then
				_sleep = 0
				ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer dominadas", v)
				if IsControlJustPressed(0, 38) then
					ESX.ShowNotification("Preparando el ejercicio...")
					Citizen.Wait(1000)					
						TaskStartScenarioInPlace(ply, "prop_human_muscle_chin_ups", 0, true)
						Citizen.Wait(30000)
						exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
						ClearPedTasksImmediately(ply)
					end
				end
		end
		Wait(_sleep)
	end
end)

CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		for k, v in pairs(Config.pesas) do
			if #(plycoords - v) < 1 then
				_sleep = 0
				ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer pesas", v)
				if IsControlJustPressed(0, 38) then
					ESX.ShowNotification("Preparando el ejercicio...")
					Citizen.Wait(1000)
					TaskStartScenarioInPlace(ply, "world_human_muscle_free_weights", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
					ClearPedTasksImmediately(ply)
					end
				end
		end
		Wait(_sleep)
	end
end)

CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		for k, v in pairs(Config.yoga) do
			if #(plycoords - v) < 1 then
				_sleep = 0
				ESX.ShowFloatingHelpNotification("[~r~E~w~] Yoga", v)
				if IsControlJustPressed(0, 38) then
					ESX.ShowNotification("Preparando el ejercicio...")
					Citizen.Wait(1000)						
					TaskStartScenarioInPlace(ply, "world_human_yoga", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 1)
					ClearPedTasksImmediately(ply)
					end
				end
		end
		Wait(_sleep)
	end
end)
