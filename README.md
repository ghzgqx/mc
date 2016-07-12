# Normal
mc - A .sh to control Minecraft server on Linux

# Usage
mc [start]|[stop]|[restart]|[shell]|[backup ([do]|[log]|[rec ([commit id])]|[gc])]

#Normal
You may need to chmod it at first<br>
chmod +x mc<br>
You can also put it in /usr/bin after you set all vars according to your own path.<br>

# Var for user set

In file “mc”<br>
$mcdir The path that Minecraft Server in.<br>
$screenname The name of screen to run Minecraft Server.<br>
$startupscript The path of startup scripts(relative to $mcdir, usually a sh file,you can also set it as a command).<br>
$backupscript The path of backup scripts(use git commit to backup server files,you can use crontab for autobackup).<br>

#Other
The startup scrpit usually be like this:<br>
java -jar -Xmx900M -Xms300M -jar serverfilename.jar nogui<br>

The backup script example(you can also write a better one by yourself):<br>
setdate=\`date +%Y%m%d%H%M%S\`<br>
echo $setdate<br>
cd /the/path/of/mc/server/dir &&  git commit -am "$setdate"<br>

# License
版权没有 盗版不究 随便改随便发 反正就一个sh
<br>
(To use this ,you must make the first commit by yourself)<br>


