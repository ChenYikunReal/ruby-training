# 带默认参数的函数
def default_param_function(a1, a2="Kotlin")
    puts "编程语言为 #{a1}"
    puts "编程语言为 #{a2}"
end
default_param_function "C", "C++"
puts
default_param_function "Java"
puts


def return_end_function
    i = 1
    j = 2
    k = 3
end
puts return_end_function
puts


def return_all_function
    i = 1
    j = 2
    k = 3
    [i, j, k]
end
puts return_all_function
puts


def vararg_function (*params)
    puts "参数个数为 #{params.length}"
    (0...params.length).each { |i|
        puts "参数值为 #{params[i]}"
    }
end
vararg_function "Zara", "6", "F"
vararg_function "Mac", "36", "M", "MCA"
puts
