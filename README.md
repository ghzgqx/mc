# Normal
mc - A .sh to control Minecraft server on Linux

# Usage
usage [start]|[stop]|[restart]|[shell]|[du]|[backup ([do]|[log]|[rec ([commit id])]|[gc])]

#How to use
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
java -Xmx900M -Xms300M -jar serverfilename.jar nogui<br>


You can create a git repo with command:<br>
mc backup init<br>




# License
版权没有 盗版不究 随便改随便发 反正就一个sh



