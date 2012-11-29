num = 81
6.times do
  puts "#{num.class}: #{num}"
  num *= num
end

plain_string = "dog"
puts "encoding of #{plain_string.inspect} is #{plain_string.encoding}"
