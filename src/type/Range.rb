# 闭区间
(10..15).each do |n|
    print n, ' '
end

# 输出换行
puts

# 左闭右开区间
(10...15).each do |n|
    print n, ' '
end

puts

# 检查指定值是否在指定的范围内
if (1..10) === 5
    puts "5在(1..10)内"
end
if ('a'..'j') === 'c'
    puts "c在('a'..'j')内"
end
if ('a'..'j') === 'z'
    puts "z在('a'..'j')内"
end

# 范围也可以用作条件表达式
score = 101
result = case score
         when 0..40
             "松果弹抖闪电鞭 赏你200斤英国大理石"
         when 41..60
             "你大E了啊 没有闪"
         when 61..70
             "你TM刚及格啊"
         when 71..100
             "针不戳啊 看来是有bear来"
         else
             "年轻人 我劝你耗子尾汁"
         end
puts result

$, =", "   # Array 值分隔符
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a
puts "#{range1}"
puts "#{range2}"

# 指定范围
digits = 0..9
puts digits.include?(5)
ret = digits.min
puts "最小值为 #{ret}"
ret = digits.max
puts "最大值为 #{ret}"
ret = digits.reject {|i| i < 5 }
puts "不符合条件的有 #{ret}"
digits.each do |digit|
    puts "在循环中 #{digit}"
end
