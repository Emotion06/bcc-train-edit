fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
lua54 'yes'

author 'Emotion06'
credits 'Bryce Canyon County Scripts | https://github.com/BryceCanyonCounty'
description 'Bridge Script | Edit from bcc-train '

server_scripts {
	'server/*.lua',
}

client_scripts {
	'client/*.lua',
}

shared_scripts {
	'config.lua',
	'shared/locale.lua',
    'languages/*.lua',
}


dependencies { 
    'vorp_core',
	'vorp_inventory',
    'bcc-utils',
}