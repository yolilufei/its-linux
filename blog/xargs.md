

### parctise

1. 将当前目录下所有的 jpg 格式文件移动到 /data/images 下
```
ls *.jpg | xargs -n1 -I {} mv {} /data/images
```

2. 统计一个源代码目录中所有 tsx 文件的行数
```
find /source -type f -name '*.tsx' | xargs -n1 -I {} wc -l
```