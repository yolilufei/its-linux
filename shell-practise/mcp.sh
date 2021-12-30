#! /bin/sh

# 获取所有参数

source=$1;
target=$2;
sourceLen=${#1}

copyDir() {
  for f in $(ls $1)
    do
        # 如果是目录 递归目录
        if [ -d "${1}/${f}" ] 
        then
            mkdir -p ${target}${1:sourceLen}/${f}
            copyDir ${1}/${f}
        else
            echo "copy $1/${f} to ${target}${1:sourceLen}"
            cp "$1/${f}" "$target${1:sourceLen}"
        fi
    done
}

if [ ! -d $source ]
then
    echo "$source 不是文件夹"
elif [ ! -d $target ]
then 
    echo "$target 不是文件夹"
else
    copyDir $source
fi
