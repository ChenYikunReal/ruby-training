puts "这是主Ruby程序"

# 在程序的结尾被调用
END {
    puts "停止Ruby程序"
}

# 在主程序执行前被调用
BEGIN {
    puts "初始化Ruby程序"
}
