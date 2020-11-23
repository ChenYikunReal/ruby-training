=begin
- 数组字面量通过[]中以逗号分隔定义，且支持range定义
- 数组通过[]索引访问
- 数组通过赋值操作插入、删除、替换元素
- 数组通过+，－号进行合并和删除元素，且集合做为新集合出现
- 数组通过<<号向原数据追加元素
- 数组通过*号重复数组元素
- 数组通过｜和&符号做并集和交集操作（注意顺序）
=end
arr = ["fred", 10, 3.14, "This is a string", "last element", ]
arr.each do |i|
    puts i
end

size_test = Array.new(20)
puts size_test.size  # 返回 20
puts size_test.length # 返回 20

names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) { |e| e *= 2 }
puts "#{nums}"

# 创建数组
nums1 = Array.[](1, 2, 3, 4, 5)
puts "#{nums1}"
# 创建数组
nums2 = Array[1, 2, 3, 4, 5]
puts "#{nums2}"

# 区间创建数组
digits = Array(0..9)
puts "#{digits}"
num = digits.at(6)
puts "#{num}"

# 压缩数组
a = %w[a b c]
n = [65, 66, 67]
puts a.pack("A3A3A3")   #=> "a  b  c  "
puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc")      #=> "ABC"