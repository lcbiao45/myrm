1.将 myrm 包解压到指定目录(myrm 目录将被用来当做 MY_RM_HOME,因此请将目录存于可靠目录下,以免被误删导致功能无法使用)
    unzip myrm.zip
    cd myrm
2.执行 myrm 中的 init.sh 脚本
    sh init.sh
3.打开新窗口输入 rm 如果返回rm already replaced by mv


Q&A
Q
删除的文件存在了哪儿?
A
删除的文件存于 $MY_RM_HOME/.mytrash 目录下,以删除操作的时间为命名的文件夹下

Q
mytrash 中的文件多久删除一次?
A
默认是每10分钟执行一次,每次都会删除7天前对应 hour的目录

Q
文件不存在报错?
A
文件不存在忽略即可,其存在的文件会被正常执行

Q
如何卸载?
A
sh uninstall.sh
