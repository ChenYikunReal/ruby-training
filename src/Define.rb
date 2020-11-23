foo = 42
puts defined? foo    # => "local-variable"
puts defined? $_     # => "global-variable"
puts defined? bar    # => nil（未定义）

puts defined? puts        # => "method"
puts defined? puts(bar)   # => nil（在这里 bar 未定义）
puts defined? unpack      # => nil（在这里未定义）
