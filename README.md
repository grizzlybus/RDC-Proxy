DISCLAIMER:  ALL CODE IS PROVIDED AS IS, ANY DAMAGES ARE THE RESPONSIBILITY OF THE USER, THIS SOFTWARE IS FOR EDUCATIONAL PURPOSES, AND SHOULD BE VERIFIED PRIOR TO USE.


# RDC-Proxy
Replace VMWare Horizon's usage of the deprecated Mac "Remote Desktop Connection" app with any RDP client on Mac 

Configuration is simple:

1. Rename/Remove the "Remote Desktop Connection.app/Contents/MacOS/Remote Desktop Connection" binary
2. Read through the rdc-proxy.sh script, make sure its doing what you want it to do! 
3. Place the "rdc-proxy.sh" script in /usr/local/bin
4. Create a symbolic link from "Remote Desktop Connection.app/Contents/MacOS/Remote Desktop Connection" to "/usr/local/bin/rdc-proxy.sh"
5. Test via VMWare Horizon!

As an example, on my Mac:

```
cd /Applications/Remote\ Desktop\ Connection.app/Contents/MacOS
mv Remote\ Desktop\ Connection Remote\ Desktop\ Connection.old
cp ~/rdc-proxy.sh /usr/local/bin
ln -s /usr/local/bin/rdc-proxy.sh Remote\ Desktop\ Connection
```
