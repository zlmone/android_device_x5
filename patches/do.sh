#!/bin/bash
CURRENT_DIR=${PWD}
LOS_REPO=
function warn() {
echo -e "\n Those Patches Are For GSI Systems"
echo -e "\n Are You Sure Thats You Want To Apply? y/n"
read answr
[ "$answr" != "y" ] && exit 1
}
function find() {
echo -e "\n Current Directory: $CURRENT_DIR"
echo -e "\n Finding Repo Root Dir.."
sleep 2
cd ../../../..
LOS_REPO=${PWD}
}
warn

find

sleep 1

echo -e "\n Finded Repo Root Directoty: $LOS_REPO"
sleep 0.5
echo -e "\n Stat Patching.."
sleep 1.5
cd $CURRENT_DIR
bash treble_patches.sh $LOS_REPO
exit 0
