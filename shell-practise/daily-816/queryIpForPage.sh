# 查看每一个IP访问了多少个页面

# awk '{S[$1]+=1} END { for(a in S) printf "%14s    %10s\n",S[a],a}' log_file.log | sort -n -k 1 -r
awk '{S[$1]+=1} END {printf "%s %14s\n","ip","count"; printf "---------------\n";for(a in S) printf "%s %14s\n",S[a],a}' log_file.log