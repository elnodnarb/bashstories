#!/bin/bash
set -o history
cd ~/bashstories
today_date=$(date +%Y/%m)
mkdir -p $today_date
today_name=$(date +%d)
cat ~/.bash_history >> ~/bashstories/${today_date}/${today_name}.txt
git add ~/bashstories/${today_date}/${today_name}.txt
git commit -m "Updating history for ${today_date}/${today_name}.txt"
git push
exit 0
