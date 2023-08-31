-------------------------------------------------------------------------
-----------------------------   Config    -------------------------------
-------------------------------------------------------------------------

Config = {}

Config.Defaultlang = 'en'

Config.WebhookLink = '' --Insert your webhook link to enable webhooking

Config.Key = 0x760A9C6F -- [G]

Config.BacchusBridgeDestroying = {
    enabled = true, --if true you will be able to blow up bacchus bridge!
    coords = {x = 492.01, y = 1774.41, z = 182.5}, --coords of where you have to  place the dynamite
    dynamiteItem = 'dynamite', --db name of the dynamite item
    dynamiteItemAmount = 2, --amount needed to explode the bridge
    explosionTimer = 30000 --time before the explosion happens
}

-------------------------------------------------------------------------
-------------------------------   End    --------------------------------
-------------------------------------------------------------------------