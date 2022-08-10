# 查看某一个页面被访问的次数
grep 'index.php' log_file.log | uniq | wc -l
