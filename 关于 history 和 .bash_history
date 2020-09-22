#两者的区别

history显示内存和~/.bash_history中的所有内容；

内存中的内容并没有立刻写入~/.bash_history，只有当当前shell关闭时才会将内存内容写入shell


#让History的记录显示时间

编辑/etc/bashrc文件，加入如下三行：
HISTFILESIZE=2000
HISTSIZE=2000
HISTTIMEFORMAT="%Y%m%d-%H%M%S: "  或者HISTTIMEFORMAT="%Y%m%d %T "
export HISTTIMEFORMAT
 
或者一句话：
 
echo "HISTFILESIZE=2000" >> /etc/bashrc && echo "HISTSIZE=2000" >> /etc/bashrc && echo 'HISTTIMEFORMAT="%Y%m%d %T "'>> /etc/bashrc && export HISTTIMEFORMAT



保存后退出，关闭当前shell，并重新登录
这个时候，在~/.bash_history文件中，就有记录命令执行的时间了

用cat命令显示这个文件，但是却会看到这个时间不是年月日显示的
而是按照unix time来显示（距离1970-01-01的秒数），但是直接使用history是可以看到正常时间的。
