#!/bin/bash  

# 设置生成的 commit 数量  
NUM_COMMITS=5000  

# 循环生成多个 commit  
for i in $(seq 1 $NUM_COMMITS)  
do  
    # 创建或修改文件并写入 100 行无效数据  
    for j in $(seq 1 1000)  
    do  
        echo "Invalid Data $j for file_$i" >> file_$i.txt  
    done  

    # 将文件添加到 git 暂存区  
    git add file_$i.txt  

    # 提交改动  
    git commit -m "Commit number $i"  
done