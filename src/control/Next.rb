(0..5).each { |i|
    if i < 2
        # 相当于其他语言的continue
        next
    end
    puts "局部变量的值为 #{i}"
}
