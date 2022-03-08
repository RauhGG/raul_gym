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

--Barra 1
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1198.868,-1574.603, 4.609806)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer pesas", vector3(-1198.868,-1574.603,4.609806))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)
				TaskStartScenarioInPlace(ply, "world_human_muscle_free_weights", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
				ClearPedTasksImmediately(ply)
				end
			end
			Wait(_sleep)
	end
end)
-- Barra 2
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1196.824, -1573.208, 4.612616)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer pesas", vector3(-1196.824, -1573.208, 4.612616))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)
				TaskStartScenarioInPlace(ply, "world_human_muscle_free_weights", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
				ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end
end)
-- Barra 3
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1202.909, -1565.074, 4.611889)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer pesas", vector3(-1202.909, -1565.074, 4.611889))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)
				TaskStartScenarioInPlace(ply, "world_human_muscle_free_weights", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
				ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end
end)
-- Dominadas 1
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1200.057, -1571.131, 4.609499)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer dominadas", vector3(-1200.057, -1571.131, 4.609499))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)					
					TaskStartScenarioInPlace(ply, "prop_human_muscle_chin_ups", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
					ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Dominadas 2
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1204.673, -1564.556, 4.609456)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer dominadas", vector3(-1204.673, -1564.556, 4.609456))
			if IsControlJustPressed(0, 38) then
					TaskStartScenarioInPlace(ply, "prop_human_muscle_chin_ups", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
					ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Flexiones 1
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1207.046, -1562.992, 4.607988)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer flexiones", vector3(-1207.046, -1562.992, 4.607988))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)					
					TaskStartScenarioInPlace(ply, "world_human_push_ups", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
					exports["gamz-skillsystem"]:UpdateSkill("Stamina", 1)
					ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Flexiones 2
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1204.32, -1560.859, 4.614558)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Hacer flexiones", vector3(-1204.32, -1560.859, 4.614558))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)					
					TaskStartScenarioInPlace(ply, "world_human_push_ups", 0, true)
					Citizen.Wait(30000)
					exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 2)
					exports["gamz-skillsystem"]:UpdateSkill("Stamina", 1)
					ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Yoga 1
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1214.897, -1544.653, 4.705237)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Yoga", vector3(-1214.897, -1544.653, 4.705237))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)						
				TaskStartScenarioInPlace(ply, "world_human_yoga", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 1)
				ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Yoga 2
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1225.866, -1547.199, 4.610762)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Yoga", vector3(-1225.866, -1547.199, 4.610762))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)						
				TaskStartScenarioInPlace(ply, "world_human_yoga", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 1)
				ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
	end	
end)
-- Yoga 3
CreateThread(function()
	while true do
		local _sleep = 1000
		local ply = PlayerPedId()
		local plycoords = GetEntityCoords(ply)
		if #(plycoords - vector3(-1222.756, -1547.993, 4.635444)) < 1 then
			_sleep = 0
			ESX.ShowFloatingHelpNotification("[~r~E~w~] Yoga", vector3(-1222.756, -1547.993, 4.635444))
			if IsControlJustPressed(0, 38) then
				ESX.ShowNotification("Preparando el ejercicio...")
				Citizen.Wait(1000)						
				TaskStartScenarioInPlace(ply, "world_human_yoga", 0, true)
				Citizen.Wait(30000)
				exports["gamz-skillsystem"]:UpdateSkill("Fuerza", 1)
				ClearPedTasksImmediately(ply)
				end
			end
		Wait(_sleep)
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