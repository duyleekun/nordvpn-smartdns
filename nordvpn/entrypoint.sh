#!/bin/bash
/usr/sbin/nordvpnd &
sleep 2
nordvpn account
nordvpn connect
sleep infinity
