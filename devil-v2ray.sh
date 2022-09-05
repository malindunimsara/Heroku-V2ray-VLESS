#! /bin/sh

rm -rf etc/xray/config.json
cat << EOF >> etc/xray/config.json

{

  "inbounds" : [

{
   "port" : $PORT ,
   "protocol" : "vless" ,
   "settings" : {
   "decryption" : "none" ,
   "clients" [
     {
       "id" : "$UUID"
     }
           ]
},
"streamsettings" : {
   "network" : "ws"
     }
},
],
  "outbounds" : [
    "network" : "ws"
{
    "protocol" : "freedom" 
}
]
}
EOF

xray -c /etc/xray/config.json