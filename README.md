# macossshtunnel
Starts an ssh tunnel and enable socks proxy

Setup:
```
git clone https://github.com/rjpj2016/macossshtunnel.git
cd macossshtunnel
ln -s "$(pwd)/tunnel.sh" /usr/local/bin/tunnel
tunnel
>> Usage tunnel [on/off]
```

A simple program to start an ssh tunnel and enable socks proxy.
I found the normal way of starting an ssh tunnel and enabling/disabling
the proxy to be quite tedious. So I wrote this small script to automate
the process.

Instructions:

Add your username@hostname pair to `ADDRESS`.

The port of the ssh server to `PORT`.

The port you want too bind to, to `BINDTOPORT`.

