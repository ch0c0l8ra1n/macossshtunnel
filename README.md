# macossshtunnel
Starts an ssh tunnel and enable socks proxy

setup:
```
git clone https://github.com/rjpj2016/macossshtunnel.git
cd macossshtunnel
ln -s tunnel.hs /usr/local/bin/tunnel
tunnel
>> Usage tunnel [on/off]
```

A simple program to well, start an ssh tunnel and enable socks proxy.

Add your username@hostname pair to `ADDRESS`.
The port of the ssh server to `PORT`.
The port you want too bind to, to `BINDTOPORT`.
