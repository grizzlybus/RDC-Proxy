#!/bin/bash

user=$(grep -A1 "UserName" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")
domain=$(grep -A1 "Domain" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")
conn=$(grep -A1 "ConnectionString" $1|grep string|sed "s/.*string.\(.*\).\/string.*/\1/")

# rdp is the standard protocol handler
open rdp://$domain\\$user@$conn
# jump changes support to "Jump Desktop", an app that also supports VNC and 
# the "jump" protocol in addition to RDP
#open jump://$domain\\$user@$conn
