#!/bin/bash

## This is an auto build script that can be used with the new RSPNVPK tool
## https://github.com/mrsteyk/RSPNVPK
## Add the VPK that your editing in a /dir folder
## eg. englishclient_frontend.bsp.pak000_dir.vpk

dirs=("Brutal-Titanfall" "Brutal-Titanfall-2" "Englist-Text-Japan-Subs" "Improved-Crosshairs" "Improved-Sunflares" "No-HUD" "Photo-Mode" "Pilot-Speedometer")
vpks=("frontend" "frontend" "frontend" "mp_common" "frontend" "mp_common" "mp_common" "mp_common")

for i in 0 1 2 3 4 5 6 7
do
   echo "Mod: ${dirs[$i]}"
   echo "VPK: ${vpks[$i]}"

   mkdir "export/${dirs[$i]}-export"
   cp "./dir/englishclient_${vpks[$i]}.bsp.pak000_dir.vpk" ./
   RSPNVPK "englishclient_${vpks[$i]}.bsp.pak000_dir.vpk" -d ${dirs[$i]} -s
   mv ./*.vpk "export/${dirs[$i]}-export"
done
