# 查看有多少个IP访问
awk '{print $1}' log_file.log | sort | uniq | wc -l