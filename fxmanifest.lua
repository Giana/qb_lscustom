fx_version 'cerulean'

game 'gta5'

description 'ESX LS Customs (Converted to QB LS Customs by Giana - github.com/Giana)'
lua54 'yes'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server/main.lua'
}

client_scripts {
    'config.lua',
    'client/main.lua'
}
