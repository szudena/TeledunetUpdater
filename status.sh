#      ___           ___                    ___     
#     /\  \         |\__\                  /\  \    
#    /::\  \        |:|  |                /::\  \   
#   /:/\:\  \       |:|  |               /:/\ \  \  
#  /::\~\:\__\      |:|__|__            _\:\~\ \  \ 
# /:/\:\ \:|__|     /::::\__\          /\ \:\ \ \__\
# \:\~\:\/:/  /    /:/~~/~             \:\ \:\ \/__/
#  \:\ \::/  /    /:/  /                \:\ \:\__\  
#   \:\/:/  /     \/__/                  \:\/:/  /  
#    \::/__/                              \::/  /   
#     ~~                                   \/__/    
#      ___           ___     
#     /\  \         /\__\    
#     \:\  \       /:/  /    
#      \:\  \     /:/  /     
#       \:\  \   /:/  /  ___ 
# _______\:\__\ /:/__/  /\__\
# \::::::::/__/ \:\  \ /:/  /
#  \:\~~\~~      \:\  /:/  / 
#   \:\  \        \:\/:/  /  
#    \:\__\        \::/  /   
#     \/__/         \/__/    
#      ___           ___           ___     
#     /\  \         /\  \         /\__\    
#    /::\  \       /::\  \       /::|  |   
#   /:/\:\  \     /:/\:\  \     /:|:|  |   
#  /:/  \:\__\   /::\~\:\  \   /:/|:|  |__ 
# /:/__/ \:|__| /:/\:\ \:\__\ /:/ |:| /\__\
# \:\  \ /:/  / \:\~\:\ \/__/ \/__|:|/:/  /
#  \:\  /:/  /   \:\ \:\__\       |:/:/  / 
#   \:\/:/  /     \:\ \/__/       |::/  /  
#    \::/__/       \:\__\         /:/  /   
#     ~~            \/__/         \/__/    
#      ___     
#     /\  \    
#    /::\  \   
#   /:/\:\  \  
#  /::\~\:\  \ 
# /:/\:\ \:\__\
# \/__\:\/:/  /
#      \::/  / 
#      /:/  /  
#     /:/  /   
#     \/__/  
 
##!/bin/sh

#let`s get the id0, token and user from textfile
echo "Please wait Update in progress..."
sleep 2
ID0=`sed -n '1p' /usr/lib/enigma2/python/Plugins/Extensions/TeledunetUpdater/id.txt `
Token=`sed -n '2p' /usr/lib/enigma2/python/Plugins/Extensions/TeledunetUpdater/id.txt `
User=`sed -n '3p' /usr/lib/enigma2/python/Plugins/Extensions/TeledunetUpdater/id.txt `

#now let`s write the resultat to the channellist
sed -i "s/id0%3D[a-zA-Z0-9]*/id0%3D"$ID0/g /etc/enigma2/userbouquet.Teledunetszudena.tv
sed -i "s/token%3D[a-zA-Z0-9]*/token%3D"$Token/g /etc/enigma2/userbouquet.Teledunetszudena.tv
sed -i "s/user%3D[a-zA-Z0-9]*/user%3D"$User/g /etc/enigma2/userbouquet.Teledunetszudena.tv
#now reload servicelist
wget -q -O - http://127.0.0.1/web/servicelistreload?mode=2 > /dev/null 2>&1

echo "id0=$ID0 and token=$Token for user=$User updated have fun"
rm /usr/lib/enigma2/python/Plugins/Extensions/TeledunetUpdater/id.txt
exit 0