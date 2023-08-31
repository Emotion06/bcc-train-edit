-------------------------------------------------------------------------
------------------------------   Server    ------------------------------
-------------------------------------------------------------------------

VORPcore = {}
TriggerEvent('getCore', function(core)
  VORPcore = core
end)

VORPInv = exports.vorp_inventory:vorp_inventoryApi()
BccUtils = exports['bcc-utils'].initiate()

BridgeDestroyed = false
RegisterServerEvent('bcc-bridges:ServerBridgeFallHandler', function(freshJoin)
  local _source = source
  if not freshJoin then
    local itemCount = VORPInv.getItemCount(_source, Config.BacchusBridgeDestroying.dynamiteItem)
    if itemCount >= Config.BacchusBridgeDestroying.dynamiteItemAmount then
      if not BridgeDestroyed then
        VORPInv.subItem(_source, Config.BacchusBridgeDestroying.dynamiteItem, Config.BacchusBridgeDestroying.dynamiteItemAmount)
        BridgeDestroyed = true
        VORPcore.NotifyLeft(_source, Config.Texts.Title, Config.Texts.RunFromExplosion, 'INVENTORY_ITEMS', 'ammo_dynamite_normal', 4000, 'COLOR_PURE_WHITE')
        Wait(Config.BacchusBridgeDestroying.explosionTimer)
        BccUtils.Discord.sendMessage(Config.WebhookLink, 'bcc-bridges', 'https://gamespot.com/a/uploads/original/1179/11799911/3383938-duck.jpg', Config.Texts.BacchusDestroyedWebhook, '')
        TriggerClientEvent('bcc-bridges:BridgeFall', -1) --triggers for all cleints
      end
    else
      VORPcore.NotifyLeft(_source, Config.Texts.Title, Config.Texts.NoItem, 'INVENTORY_ITEMS', 'ammo_dynamite_normal', 4000, 'COLOR_PURE_WHITE')
    end
  else
    if BridgeDestroyed then
      TriggerClientEvent('bcc-bridges:BridgeFall', _source) --triggers for loaded in client
    end
  end
end)

-------------------------------------------------------------------------
-------------------------------   End    --------------------------------
-------------------------------------------------------------------------