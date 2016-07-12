# Normal
mc - A .sh to control Minecraft server on Linux

# Usage
mc [start]|[stop]|[restart]|[shell]|[backup ([do]|[log]|[rec ([commit id])]|[gc])]

#Normal
You may need to chmod it at first
chmod +x mc
You can also put it in /usr/bin after you set all vars according to your own path.

# Var for user set

In file “mc”
$mcdir The path that Minecraft Server in.
$screenname The name of screen to run Minecraft Server.
$startupscript The path of startup scripts(relative to $mcdir, usually a sh file,you can also set it as a command).
$backupscript The path of backup scripts(use git commit to backup server files,you can use crontab for autobackup).

#Other
The startup scrpit usually be like this:
java -jar -Xmx900M -Xms300M -jar serverfilename.jar nogui

The backup script example(you can also write a better one by yourself):
setdate=`date +%Y%m%d%H%M%S`
echo $setdate
cd /the/path/of/mc/server/dir &&  git commit -am "$setdate"

(To use this ,you must make the first commit by yourself)


