### 重定义rm命令 ###

# 定义回收站目录
trash_path="${MY_RM_HOME}/.mytrash"

# 判断 $trash_path 定义的文件是否存在，如果不存在，那么就创建 $trash_path.
if [ ! -d $trash_path ]; then
    mkdir -p $trash_path
fi

time=$(date "+%Y%m%d%H%M%S")

originParam="$@"
while [[ $1 == "-"* ]];do
    shift 1
done

if [ $# -eq 0 ];then
	echo "rm already replaced by mv ,MY_RM_HOME=$MY_RM_HOME"
	mv --version
	exit 0
fi

mkdir -p $trash_path/${time}_trash
/bin/mv  "$@"  $trash_path/${time}_trash
