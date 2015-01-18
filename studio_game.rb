player1_name = "larry"
player1_health = 60
player2_name = "curly"
player2_health = 125
player3_name = "moe"
player3_health = 100
player4_name = "shemp"
player4_health = 90

puts "#{player1_name.capitalize} has health of #{player1_health}."
puts "#{player2_name.upcase} has health of #{player2_health}."
puts "#{player3_name.capitalize} has health of #{player3_health}".center(40, "*")
puts "#{player4_name.capitalize.ljust(20, '.')} #{player4_health} health"

current_time = Time.new
puts "The game started on #{current_time.strftime('%A %d/%m/%Y at %I:%M%p')}"