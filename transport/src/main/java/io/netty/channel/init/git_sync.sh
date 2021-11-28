#!/bin/bash

DATE=$(date "+%G-%m-%d %H:%M:%S")
cd /home/vivi/github/GMBI/
git add .
git commit -m "$DATE: auto update init config"
git push
exit
