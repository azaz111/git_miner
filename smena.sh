#!/bin/bash
y=0
q=1
while [ $q -le 5 ]
do
y=$(($y+1))
if [ "$y" -gt 15 ]
then
echo "Pepeezd"
screen -X -S mount quit
sleep 1
screen -X -S mount1 quit
echo "Razmont"
sleep 5
fusermount -uz /osnova1
sleep 1
fusermount -uz /osnova
cd AutoRclone
python3 SmenaDrive.py
echo "SMONTIROVALI"
screen -dmS mount rclone mount osnova: /osnova --allow-non-empty --daemon 
sleep 2
screen -dmS mount rclone mount1 osnova1: /osnova1 --allow-non-empty --daemon 
cd  
sleep 60
y=0
fi
sleep 120
done  
