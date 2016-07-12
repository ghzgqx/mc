echo "mc $1 $2 $3"
mcdir=~/data
screenname=mc
startupscript=./start.sh
backupscript=~/gitbkup.sh
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
	backup)
		case $2 in
			do)
			cd ~
			$backupscript
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
			*)
			echo "mc backup- Minecraft Server Control System - Backup"
			echo "usage [do]|[log]|[rec ([commit id])]|[gc]"
		;;
		esac
			
;;
	*)
	echo "mc - Minecraft Server Control System"
	echo "usage [start]|[stop]|[restart]|[shell]|[backup ([do]|[log]|[rec ([commit id])]|[gc])]"
;;
esac
