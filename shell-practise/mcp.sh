#! /bin/bash

# 获取所有参数

source=$1;
target=$2;


copyDir() {
  for f in $(ls $source)
    do
        echo "${source}/${f}"
        if [ -d "${source}/${f}" ] 
        then
            echo "${source}"
            let "source=${source}/${f}"
            copyDir
        # else
            # echo "copy $source/${f} to ${target}"
            # cp "$source/${f}" "$target"
        fi
    done
}

if [ ! -d $source ]
then
    echo '$source 不是文件夹'
elif [ ! -d $target ]
then 
    echo "$target 不是文件夹"
else
    copyDir
fi
