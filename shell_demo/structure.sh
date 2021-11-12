#! /bin/bash
a=10
b=20
# if 中括号和变量间要有空格
if [ $a == $b ]
then
    echo "a 等于 b"
elif [ $a -gt $b ]
then
    echo "a 大于 b"
elif [ $a -lt $b ]
then
    echo "a 小于 b"
else
    echo "错啦错啦"
fi
