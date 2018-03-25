#!/bin/zsh

ADDRESS=root@139.59.23.214;
PORT=6666;
STATE=$1;
BINDTOPORT=1337;

kill $(lsof -t -i:$BINDTOPORT) 2> /dev/null;
networksetup -setsocksfirewallproxystate Wi-Fi off;

if [ $# -ne 1 ]
then
echo "Usage tunnel [on/off]";
exit 1;
fi

if [ $STATE = "off" ]
then
echo "The proxy has been disabled.";
exit 0;
fi

echo "Starting Tunnel.";
ssh -D $BINDTOPORT -f -C -N $ADDRESS -p $PORT;

echo "Configuring Proxy.";
networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 $BINDTOPORT;
networksetup -setsocksfirewallproxystate Wi-Fi on;
