# 1.kill 清理任务
ps -ef | grep 'invoke_clear_task.sh'  |grep -v 'grep' |  awk '{print $2}' | xargs -I {} kill {}

# 2.清除 alias和 export 信息
workdir=$MY_RM_HOME
# mac系统特殊语法
if [[ "$(uname  -a)" =~ "Darwin" ]];then
    sudo -S  sed  -i  "" "/MY_RM_HOME/d"  ~/.bash_profile
else
    sed  -i  "/MY_RM_HOME/d"  ~/.bash_profile
fi

source ~/.bash_profile

# 3.删除目录
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "would you want to delete whole workdir $workdir [Y/N] ???"
echo "would you want to delete whole workdir $workdir [Y/N] ???"
echo "would you want to delete whole workdir $workdir [Y/N] ???"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
read yes_to_rm

if [ "$yes_to_rm" == "Y" -o "$yes_to_rm" == "y" ]; then
    rm -rf $workdir
fi

