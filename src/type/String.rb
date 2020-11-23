name1 = "爸比"
name2 = "我们"
puts "#{name1}, #{name2}在哪~里呀?"
puts

x, y, z = 12, 36, 72
puts "x 的值为 #{x}"
puts "x+y 的值为 #{x + y}"
puts "x y z 的平均值为 #{(x + y + z)/3}"
puts

# Ruby中还支持一种采用%q和%Q来引导的字符串变量
# %q使用的是单引号引用规则，而%Q是双引号引用规则，后面再接一个(![{等等的开始界定符和与}])等等的末尾界定符
# 跟在%q或%Q后面的字符是分界符
# 分界符可以是任意一个非字母数字的单字节字符 如：[,{,(,<,!等
# 字符串会一直读取到发现相匹配的结束符为止
desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|
puts desc1
puts desc2
puts

# 调用字符串的方法
myStr = String.new("THIS IS TEST")
foo = myStr.downcase
puts "#{foo}"
puts

# 字符串解压缩
puts "abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
puts
puts "abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
puts
puts "abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
puts
puts "aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
puts
puts "aaa".unpack('h2H2c')               #=> ["16", "61", 97]
puts
puts "\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
puts
puts "now=20is".unpack('M*')             #=> ["now is"]
puts
puts "whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
