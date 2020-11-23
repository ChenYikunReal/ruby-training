hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
    print key, " is ", value, "\n"
end

puts

months = Hash.new( "month" )
puts "#{months[0]}"
puts "#{months[72]}"

puts

$, = ", "

months = {"1" => "January", "2" => "February"}
keys = months.keys
puts "#{keys}"
