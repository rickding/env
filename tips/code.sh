#!/bin/bash

# 使用工具统计代码行数，两者得到的数据一致，VSCode Counter，IDEA Statistic，https://www.jianshu.com/p/1a08c3dcbe42

# 命令行统计代码行数，包含空行和注释时得到的数据和工具基本一致，https://blog.csdn.net/h784707460/article/details/95508796
find . "(" -name "*.java" -or -name "*.js" -or -name "*.vue" -or -name "*.cs" -or -name "*.h" -or -name "*.cpp" -or -name "*.py" -or -name "*.sh" -or -name "*.yml" ")" -print | xargs grep -v "^$" | wc -l
