fx_version 'adamant'

game 'gta5'
author 'SYNO'
version '1.1'
lua54 'yes'

client_scripts {
    'client/client.lua',
    'config.lua'
}

server_scripts {
    'server/server.lua'
}

files {
    'html/main.html',
    'html/style.css',
    'html/script.js',
    'html/fonts/*.ttf',
    'html/img/logo.png'
}

ui_page 'html/main.html'

