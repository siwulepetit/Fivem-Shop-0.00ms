 ESX = nil

 TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
 RegisterNetEvent('achatitemshop')
 AddEventHandler('achatitemshop', function(name, price)
     local xPlayer = ESX.GetPlayerFromId(source)
     local xMoney = xPlayer.getAccount('bank').money
     if xMoney >= price then
         xPlayer.removeAccountMoney('bank', price)
        
        xPlayer.addInventoryItem(name, 1)


         TriggerClientEvent('esx:showNotification', source, "Vous avez payé ~r~"..price.."$")
     else
         TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
     end
 end)
