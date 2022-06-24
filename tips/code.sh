#!/bin/bash

# https://blog.csdn.net/h784707460/article/details/95508796

# 统计代码行数，包括注释，不包括空行
find . "(" -name "*.java" -or -name "*.js" -or -name "*.vue" -or -name "*.cs" -or -name "*.h" -or -name "*.cpp" -or -name "*.py" -or -name "*.sh" ")" -print | xargs grep -v "^$"|wc -l
