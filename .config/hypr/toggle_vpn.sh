#!/bin/bash

# Redirect both stdout and stderr to /dev/null
exec > /dev/null 2>&1

VPN_GATEWAY="10.2.0.1"
VPN_IFACE="arch-DE-126"

if [[ -z "$(wg show interfaces | grep "$VPN_IFACE")" ]]; then
    wg-quick up "$VPN_IFACE" || exit 1
    while true; do
        # Get NAT-PMP config from the VPN provider
        logs="$(natpmpc -a 1 0 tcp 60 -g "$VPN_GATEWAY")"

        # Extract the assigned port
        port="$(echo "$logs" | grep "Mapped public port" -m 1 | cut -d " " -f 4)"

        # Save debug info (optional)
        echo "$logs" > $HOME/.natpmpc_logs
        echo "$port" > $HOME/.natpmpc_port

        # Change listening port for rTorrent via config file
        sed -E -i "s/(network\.port_range\.set = )([0-9]*-[0-9]*)/\1$port-$port/g" $HOME/.rtorrent.rc

        # Change listening port for qBitTorrent via WebUI API
        # Note: Assumes enabled setting `Bypass authentication for clients on localhost`:
        # Otherwise use:
        # curl --cookie-jar /tmp/cookie.txt -i --header 'Referer: http://localhost:8080' --data 'username=admin&password=adminadmin' http://localhost:8080/api/v2/auth/login
        # curl --cookie /tmp/cookie.txt "http://localhost:8080/api/v2/app/setPreferences" -d 'json={"listen_port": "'"$port"'"}'
        curl "http://localhost:8080/api/v2/app/setPreferences" -d 'json={"listen_port": "'"$port"'"}'

        sleep 45
    done
else
    wg-quick down "$VPN_IFACE"
    rm $HOME/.natpmpc_{logs,port}
    pkill toggle_vpn.sh
fi
