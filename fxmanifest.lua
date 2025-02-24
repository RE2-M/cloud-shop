fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


lua54 "yes"
use_experimental_fxv2_oal "yes"

author "yiruzu-Re2-M"
description "Cloud Resources - Shop"
version "1.2.1"

discord "https://discord.gg/jAnEnyGBef"
repository "https://github.com/yiruzu/cloud-shop"
license "CC BY-NC"

files { "shared/sh_config.lua", "shared/sh_locales.lua" }
shared_scripts { "@ox_lib/init.lua", "shared/sh_functions.lua" }
server_scripts { "bridge/server/*.lua", "server/*.lua" }
client_scripts { "client/*.lua" }

ui_page { "web/dist/index.html" }
files { "web/dist/**/*" }
