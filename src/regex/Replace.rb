# 正则表达式的参考内容：https://www.runoob.com/ruby/ruby-regular-expressions.html
text = "rails是rails, Ruby on Rails是流行的Ruby框架"

# 把所有的 "rails" 改为 "Rails"
text.gsub!("rails", "Rails")

# 把所有的单词 "Rails" 都改成首字母大写
text.gsub!(/\brails\b/, "Rails")

puts "#{text}"
