
# mac 语法
if [[ "$(uname  -a)" =~ "Darwin" ]];then
    my_date=$(date -v  -7d +%Y%m%d%H)
else
    my_date=$(date -d  -7days +%Y%m%d%H)
fi

now=$(date +%Y%m%d%H%M%S)
echo $now "start clear files">> ${MY_RM_HOME}/clear.log
/bin/rm -rfv ${MY_RM_HOME}/.mytrash/${my_date}* >> ${MY_RM_HOME}/clear.log
echo $now "done........." >> ${MY_RM_HOME}/clear.log
