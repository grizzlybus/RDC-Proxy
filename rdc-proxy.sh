#!/bin/bash

user=$(grep -A1 "UserName" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")
domain=$(grep -A1 "Domain" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")
conn=$(grep -A1 "ConnectionString" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")

# rdp is the standard protocol handler
open rdp://full%20address=s:$conn\&username=s:$user\&domain=s:$domain\&use%20multimon=i:0\&screen%20mode%20id=i:1
# jump changes support to "Jump Desktop", an app that also supports VNC and 
# the "jump" protocol in addition to RDP
#open jump://$domain\\$user@$conn
