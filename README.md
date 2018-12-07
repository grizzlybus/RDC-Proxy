DISCLAIMER:  ALL CODE IS PROVIDED AS IS, ANY DAMAGES ARE THE RESPONSIBILITY OF THE USER, THIS SOFTWARE IS FOR EDUCATIONAL PURPOSES, AND SHOULD BE VERIFIED PRIOR TO USE.


# RDC-Proxy
Replace VMWare Horizon's usage of the deprecated Mac "Remote Desktop Connection" app with any RDP client on Mac 

Configuration is simple:

1. Install the "Remote Desktop Connection" app (if you haven't already).  It's available via a simple Google search, here is one such link: https://www.macupdate.com/app/mac/49521/remote-desktop-connection
2. Rename/Remove the "Remote Desktop Connection.app/Contents/MacOS/Remote Desktop Connection" binary file
3. Read through the rdc-proxy.sh script, make sure its doing what you want it to do! 
4. Place the "rdc-proxy.sh" script in /usr/local/bin
5. Create a symbolic link from "Remote Desktop Connection.app/Contents/MacOS/Remote Desktop Connection" to "/usr/local/bin/rdc-proxy.sh"
6. Test via VMWare Horizon!

As an example, on my Mac with Remote Desktop Connection installed in the Applications Folder:

```
cd /Applications/Remote\ Desktop\ Connection.app/Contents/MacOS
mv Remote\ Desktop\ Connection Remote\ Desktop\ Connection.old
cp ~/rdc-proxy.sh /usr/local/bin
chmod 755 /usr/local/bin/rdc-proxy.sh
ln -s /usr/local/bin/rdc-proxy.sh Remote\ Desktop\ Connection
```
