ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'airlines', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'airlines', _U('taxi_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'airlines', 'airlines', 'society_airlines', 'society_airlines', 'society_airlines', {type = 'public'})

RegisterServerEvent('esx_airlinebyjayck:success')
AddEventHandler('esx_airlinebyjayck:success', function()
	math.randomseed(os.time())

	local xPlayer        = ESX.GetPlayerFromId(source)
	local total          = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max)
	local societyAccount = nil

	if xPlayer.job.grade >= 0 then
		total = total * 2
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_airlines', function(account)
		societyAccount = account
	end)

	if societyAccount ~= nil then

		local playerMoney  = math.floor(total / 100 * 35)
		local societyMoney = math.floor(total / 100 * 65)

		xPlayer.addMoney(playerMoney)
		societyAccount.addMoney(societyMoney)

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned', playerMoney))

	else
		xPlayer.addMoney(total)
		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_earned', total))
	end

end)

RegisterServerEvent('esx_airlinebyjayck:getStockItem')
AddEventHandler('esx_airlinebyjayck:getStockItem', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_airlines', function(inventory)
		local item = inventory.getItem(itemName)
		local sourceItem = xPlayer.getInventoryItem(itemName)

		-- is there enough in the society?
		if count > 0 and item.count >= count then
		
			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('player_cannot_hold'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn', count, item.label))
			end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end
	end)
end)

ESX.RegisterServerCallback('esx_airlinebyjayck:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_airlines', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterServerEvent('esx_airlinebyjayck:putStockItems')
AddEventHandler('esx_airlinebyjayck:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_airlines', function(inventory)
		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, item.label))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

	end)

end)

ESX.RegisterServerCallback('esx_airlinebyjayck:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)