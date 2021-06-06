ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('bros-burger:etver')
AddEventHandler('bros-burger:etver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('burgermeat', 1) then
        xPlayer.addInventoryItem('burgermeat', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:chickenmeatballsver')
AddEventHandler('bros-burger:chickenmeatballsver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('chickenmeatballs', 1) then
        xPlayer.addInventoryItem('chickenmeatballs', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:potatover')
AddEventHandler('bros-burger:potatover', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('potato', 1) then
        xPlayer.addInventoryItem('potato', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:ekmekver')
AddEventHandler('bros-burger:ekmekver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('burgerbun', 1) then
        xPlayer.addInventoryItem('burgerbun', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:ketchupver')
AddEventHandler('bros-burger:ketchupver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('ketchup', 1) then
        xPlayer.addInventoryItem('ketchup', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:mayonnaisever')
AddEventHandler('bros-burger:mayonnaisever', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('mayonnaise', 1) then
        xPlayer.addInventoryItem('mayonnaise', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:lettucever')
AddEventHandler('bros-burger:lettucever', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('lettuce', 1) then
        xPlayer.addInventoryItem('lettuce', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:chedarver')
AddEventHandler('bros-burger:chedarver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('chedar', 1) then
        xPlayer.addInventoryItem('chedar', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:sesamebreadver')
AddEventHandler('bros-burger:sesamebreadver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('sesamebread', 1) then
        xPlayer.addInventoryItem('sesamebread', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:burgerver')
AddEventHandler('bros-burger:burgerver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('burgermeat').count >= 1 then
        if xPlayer.getInventoryItem('burgerbun').count >= 1 then
            if xPlayer.getInventoryItem('ketchup').count >= 1 then
                if xPlayer.canCarryItem('hamburger', 1) then
                    xPlayer.removeInventoryItem('burgermeat', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('burgerbun', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('ketchup', 1)
                    Citizen.Wait(500)
                    xPlayer.addInventoryItem('hamburger', 1)
                else
                    TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
                end
            else
                TriggerClientEvent('esx:showNotification', src, 'Üzerinde yeterli burger malzemesi yok!')
            end
        else
            TriggerClientEvent('esx:showNotification', src, 'Üzerinde yeterli burger ekmeği yok!')
        end
    end
end)

RegisterServerEvent('bros-burger:tavukver')
AddEventHandler('bros-burger:tavukver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('chickenmeatballs').count >= 1 then
        if xPlayer.getInventoryItem('burgerbun').count >= 1 then
            if xPlayer.getInventoryItem('lettuce').count >= 1 then
                if xPlayer.canCarryItem('fowlburger', 1) then
                    xPlayer.removeInventoryItem('chickenmeatballs', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('burgerbun', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('lettuce', 1)
                    Citizen.Wait(500)
                    xPlayer.addInventoryItem('fowlburger', 1)
                else
                    TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
                end
            else
                TriggerClientEvent('esx:showNotification', src, 'Üzerinde yeterli burger malzemesi yok!')
            end
        else
            TriggerClientEvent('esx:showNotification', src, 'Üzerinde yeterli burger ekmeği yok!')
        end
    end
end)

RegisterServerEvent('bros-burger:paketver')
AddEventHandler('bros-burger:paketver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('hamburger').count >= 1 then
        if xPlayer.canCarryItem('burgerpack', 1) then
            xPlayer.removeInventoryItem('hamburger', 1)
            Citizen.Wait(500)
            xPlayer.addInventoryItem('burgerpack', 1)
        else
            TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
        end
    end
end)

RegisterServerEvent('bros-burger:tavukpaketver')
AddEventHandler('bros-burger:paketver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('fowlburger').count >= 1 then
        if xPlayer.canCarryItem('burgerpack', 1) then
            xPlayer.removeInventoryItem('fowlburger', 1)
            Citizen.Wait(500)
            xPlayer.addInventoryItem('burgerpack', 1)
        else
            TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
        end
    end
end)

RegisterServerEvent('bros-burger:burgersat')
AddEventHandler('bros-burger:burgersat', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local money = math.random(Config.MinParaMiktar, Config.MaxParaMiktar)
    if xPlayer.getInventoryItem('burgerpack').count >= 1 then
        xPlayer.removeInventoryItem('burgerpack', 1)
        Citizen.Wait(500)
        xPlayer.addMoney(money)
    end
end)

ESX.RegisterServerCallback('bros-burger:malzemekontrol', function(source, cb, item, gereklisayi)
	local xPlayer = ESX.GetPlayerFromId(source)
    local itemcount = xPlayer.getInventoryItem(item).count
    local itemname = xPlayer.getInventoryItem(item).label
	if itemcount >= gereklisayi then
		cb(true)
	else
        activity = 0
        TriggerClientEvent('esx:showNotification', source, 'Üzerinde yeterli '..itemname..' yok!')
	end
end)

RegisterServerEvent('bros-jobveh:takemoney')
AddEventHandler('bros-jobveh:takemoney', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    xPlayer.removeAccountMoney('bank', 2500)
    TriggerClientEvent('esx:showNotification', src, 'Depozito olarak banka hesabınızdan 2500$ kesildi!')
end)

ESX.RegisterServerCallback("bros-jobveh:givemoney", function(source, cb, verilecekpara)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    xPlayer.addAccountMoney('bank', verilecekpara)
    cb(true)
end)
