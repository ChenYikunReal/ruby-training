# 获取当前的日期和时间
time1 = Time.new
puts "当前时间 : " + time1.inspect

# Time.now功能相同
time2 = Time.now
puts "当前时间 : " + time2.inspect

# Time的组件
puts time1.year    # => 日期的年份
puts time1.month   # => 日期的月份（1 到 12）
puts time1.day     # => 一个月中的第几天（1 到 31）
puts time1.wday    # => 一周中的星期几（0 是星期日）
puts time1.yday    # => 365：一年中的第几天
puts time1.hour    # => 23：24 小时制
puts time1.min     # => 59
puts time1.sec     # => 59
puts time1.usec    # => 999999：微秒
puts time1.zone    # => "UTC"：时区名称

# 获取所有的组件：[sec,min,hour,day,month,year,wday,yday,isdst,zone]
values = time1.to_a
# [57, 38, 14, 23, 11, 2020, 1, 328, false, "中国标准时间"]
p values
# 2020-11-23 14:38:30 UTC
puts Time.utc(*values)

# 返回从纪元以来的秒数
time3 = Time.now.to_i
puts time3

# 把秒数转换为 Time 对象
Time.at(time3)
# 返回从纪元以来的秒数，包含微妙
time3 = Time.now.to_f
puts time3

puts time1.zone       # => "UTC"：返回时区
puts time1.utc_offset # => 0：UTC是相对于UTC的0秒偏移
puts time1.zone       # => "PST"（或其他时区）
puts time1.isdst      # => false：如果UTC没有DST（夏令时）
puts time1.utc?       # => true：如果在UTC时区
puts time1.localtime  # 转换为本地时区
puts time1.gmtime     # 转换回UTC
puts time1.getlocal   # 返回本地区中的一个新的Time对象
puts time1.getutc     # 返回UTC中的一个新的Time对象

puts time1.to_s
puts time1.ctime
puts time1.localtime
puts time1.strftime("%Y-%m-%d %H:%M:%S")

past = time1 - 10          # 10秒之前  Time - number => Time
puts past
future = time1 + 10        # 从现在开始10秒之后  Time + number => Time
puts future
diff = future - time1      # => 10  Time - Time => 秒数
puts diff
