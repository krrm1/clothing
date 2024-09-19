-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'krrm1'
description ''
version '2.0.0'

-- What to run
client_scripts {
    'config.lua',
    'client/client.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

ui_page('html/index.html')

file {
    'html/index.html',
    'html/script.js',
    'html/css/style.css',
    'html/css/all.min.css',
    'html/webfonts/fa-brands-400.eot',
    'html/webfonts/fa-brands-400.svg',
    'html/webfonts/fa-brands-400.ttf',
    'html/webfonts/fa-brands-400.woff',
    'html/webfonts/fa-brands-400.woff2',
    'html/webfonts/fa-regular-400.eot',
    'html/webfonts/fa-regular-400.svg',
    'html/webfonts/fa-regular-400.ttf',
    'html/webfonts/fa-regular-400.woff',
    'html/webfonts/fa-regular-400.woff2',
    'html/webfonts/fa-solid-900.eot',
    'html/webfonts/fa-solid-900.svg',
    'html/webfonts/fa-solid-900.ttf',
    'html/webfonts/fa-solid-900.woff',
    'html/webfonts/fa-solid-900.woff2',
}

lua54 'yes'