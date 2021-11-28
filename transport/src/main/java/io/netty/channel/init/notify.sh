#!/bin/bash
dir=/home/vivi/github/GMBI/
log_file=/home/vivi/github/watch.log   #指定输出信息的文件，方便后面查看
rsync_file=./git_sync.sh
while
inotifywait -r $dir -o $log_file -e close --timefmt '%d/%m/%y %H:%M' --format '%T %w %f %e';
do
    bash $rsync_file        #执行同步文件的脚本
    #sleep 10m               #等待10分钟，如果不加这个命令，同步会非常频繁，没必要
    echo "注意注意"
done
