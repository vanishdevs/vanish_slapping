fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'vanishdev'
description 'Slapping system using keybinds'
version '1.0.1'

shared_scripts { '@ox_lib/init.lua', 'config.lua' }
client_script 'client.lua'
files { 'locales/*.json' }

dependencies {
    'ox_lib',
    'xsound'
}