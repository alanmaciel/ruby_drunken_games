current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "The game started on #{formatted_time}"
name1 = 'larry'
name2 = 'curly'
name3 = 'moe'
health1 = 60
health2 = health1
health3 = 100
puts "#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"
puts "#{name1}'s health is #{health1 / 9}"

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"

puts "#{name3} has a health of #{health3}".capitalize.center(50, "*")

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"

name4 = 'shemp'
health4 = 90

puts "#{name4.capitalize.ljust(30, '.')} #{health4} health"

