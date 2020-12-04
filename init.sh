dir=$(dirname $0)
if [ $? != 0 ];then
    echo "please make sure execute using sh init.sh instead of ./init.sh  or source init.sh"
    exit -1
fi

cd $dir
workdir=$(pwd)

if [ -z ~/.bash_profile ];then
    touch ~/.bash_profile
fi

# 1.环境变量
echo "export MY_RM_HOME=${workdir}" >> ~/.bash_profile

# 2.添加别名
echo "alias rm='sh \$MY_RM_HOME/remove.sh'" >> ~/.bash_profile

# 3.生效配置
source ~/.bash_profile

# 4.执行定时清理任务
nohup sh invoke_clear_task.sh >/dev/null 2>&1 &
