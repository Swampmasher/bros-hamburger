ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('bros-burger:etver')
AddEventHandler('bros-burger:etver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('burgereti', 1) then
        xPlayer.addInventoryItem('burgereti', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:tavukkoftever')
AddEventHandler('bros-burger:tavukkoftever', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('tavukkofte', 1) then
        xPlayer.addInventoryItem('tavukkofte', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:patatesver')
AddEventHandler('bros-burger:patatesver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('patates', 1) then
        xPlayer.addInventoryItem('patates', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:ekmekver')
AddEventHandler('bros-burger:ekmekver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('burgerekmegi', 1) then
        xPlayer.addInventoryItem('burgerekmegi', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:ketcapver')
AddEventHandler('bros-burger:ketcapver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('ketcap', 1) then
        xPlayer.addInventoryItem('ketcap', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:mayonezver')
AddEventHandler('bros-burger:mayonezver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('mayonez', 1) then
        xPlayer.addInventoryItem('mayonez', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:marulver')
AddEventHandler('bros-burger:marulver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('marul', 1) then
        xPlayer.addInventoryItem('marul', 1)
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

RegisterServerEvent('bros-burger:susamlıekmekver')
AddEventHandler('bros-burger:susamlıekmekver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.canCarryItem('susamlıekmek', 1) then
        xPlayer.addInventoryItem('susamlıekmek', 1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Üzerinde bunu taşıyacak yer yok!')
    end
end)

RegisterServerEvent('bros-burger:burgerver')
AddEventHandler('bros-burger:burgerver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('burgereti').count >= 1 then
        if xPlayer.getInventoryItem('burgerekmegi').count >= 1 then
            if xPlayer.getInventoryItem('ketcap').count >= 1 then
                if xPlayer.canCarryItem('hamburger', 1) then
                    xPlayer.removeInventoryItem('burgereti', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('burgerekmegi', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('ketcap', 1)
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
    if xPlayer.getInventoryItem('tavukkofte').count >= 1 then
        if xPlayer.getInventoryItem('burgerekmegi').count >= 1 then
            if xPlayer.getInventoryItem('marul').count >= 1 then
                if xPlayer.canCarryItem('fowlburger', 1) then
                    xPlayer.removeInventoryItem('tavukkofte', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('burgerekmegi', 1)
                    Citizen.Wait(250)
                    xPlayer.removeInventoryItem('marul', 1)
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
        if xPlayer.canCarryItem('burgerpaketi', 1) then
            xPlayer.removeInventoryItem('hamburger', 1)
            Citizen.Wait(500)
            xPlayer.addInventoryItem('burgerpaketi', 1)
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
        if xPlayer.canCarryItem('burgerpaketi', 1) then
            xPlayer.removeInventoryItem('fowlburger', 1)
            Citizen.Wait(500)
            xPlayer.addInventoryItem('burgerpaketi', 1)
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
    if xPlayer.getInventoryItem('burgerpaketi').count >= 1 then
        xPlayer.removeInventoryItem('burgerpaketi', 1)
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
