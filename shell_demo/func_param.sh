#! /bin/bash
funWithParam() {
    echo "第一个参数是 $1 "
    echo "第二个参数是 $2 "
    echo "第十个参数是 ${10} "
    echo "参数总数是 $# 个"
    echo "当前运行的进程ID是 $$"
}

funWithParam 1 2 3 4 5 6 7 8 9 0 12