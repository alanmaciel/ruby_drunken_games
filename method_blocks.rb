def double(p1)
  yield(p1*2)
end

puts double(3) {|val| "I got #{val}"}
puts double("tom") {|val| "Then I got #{val}"}