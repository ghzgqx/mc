echo "mc $1 $2 $3"
mcdir=~/data
screenname=mc
startupscript=./start.sh
case $1 in
	start)
	cd $mcdir
	screen -R $screenname $startupscript
;;
	stop)
	killall java
	killall screen
;;
	shell)
	screen -x $screenname
;;
	restart)
	killall java
	killall screen
	cd $mcdir
        screen -R $screenname $startupscript
;;
	du)
	du -sh $mcdir
;;
	backup)
		case $2 in
			do)
			setdate=`date +%Y%m%d%H%M%S`
			echo $setdate
			cd $mcdir &&  git commit -am "$setdate"

		;;
			log)
			cd $mcdir
			git log
		;;
			rec)
			cd $mcdir
			git reset --hard $3
		;;
			gc)
			cd $mcdir
			git gc
		;;
			init)
			cd $mcdir
			git init
			git add ./*
			git commit -m "Git Init"
		;;
			*)
			echo "mc backup- Minecraft Server Control System - Backup"
			echo "usage [do]|[log]|[rec ([commit id])]|[gc]|[init]"
		;;
		esac
			
;;
	*)
	echo "mc - Linux Minecraft Server Control System"
	echo "usage [start]|[stop]|[restart]|[shell]|[du]|[backup ([do]|[log]|[rec ([commit id])]|[gc]|[init])]"
;;
esac
