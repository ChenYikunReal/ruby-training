def test1
    puts "在test方法内"
    yield
    puts "你又回到了test方法内"
    yield
end

test1 {puts "你在块内"}

def test2
    yield 5
    puts "在test方法内"
    yield 100
end

test2 {|i| puts "你在块#{i}内"}

# 通常使用yield语句从与其具有相同名称的方法调用块
def test
    yield
end
test{ puts "Hello world"}

# 如果方法的最后一个参数前带有&，则可以向该方法传递一个块，且这个块可被赋给最后一个参数
def test3(&block)
    block.call
end
test3 { puts "Hello World!"}

