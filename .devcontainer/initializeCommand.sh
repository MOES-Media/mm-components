#!/bin/bash
echo "Gathering your IP for the dev container"

##############################################################################################
# en (Ethernet) - ib (InfiniBand) - sl (Serial line IP (slip)) - wl (Wireless local area 
# network (WLAN)) - ww (Wireless wide area network (WWAN))
#############################################################################################
your_interface_name="eno" 
interface_prefix="wl" # Choose the interface network.
iname=$(ip -o link show | sed -rn "/^[0-9]+: $interface_prefix/{s/.: ([^:]*):.*/\1/p}")
echo "Interface name: $iname"
ip=$(ifconfig $iname | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | sed 's/inet //g')
echo "Extracted IP: $ip"

echo "REACT_NATIVE_PACKAGER_HOSTNAME=$ip" > .devcontainer/.env