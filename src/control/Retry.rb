(1..5).each { |i|
    # retry不被1.9以上版本支持
    retry if i > 2
    puts "局部变量的值为 #{i}"
}
