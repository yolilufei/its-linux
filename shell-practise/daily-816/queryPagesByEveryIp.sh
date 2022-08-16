# 查看某一个IP访问了哪些页面

grep '172.169.1.122' log_file.log | awk '{print $2}'