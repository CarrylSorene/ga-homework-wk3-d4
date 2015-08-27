train_lines = {
  line_n: ['TS', '34', '28N', '23N', 'USN', '8N'],
  line_l: ['8L', '6', 'USL', '3', '1'],
  line_6: ['GC', '33', '286', '236', 'US6', 'AP']
}

# changes = 0
# stop_number = 0

puts 'Which line do you want to use?'
gets.downcase
line =
puts 'Which station are you starting from?'
gets.downcase
station_start = 
puts 'Which station are you going to?'
gets.downcase
station_end =

# if 
#   line = n
#   stop_number = station_end - station_start
# elsif
#   line = l
#   stop_number = station_end - station_start
# elsif
#   line = 6 
#   stop_number = station_end - station_start
# end

# stop_number = station_end - station_start
puts 'Your journey will take' stop_number 'stops'

changes = 'one'

# while route(var) includes 'Union Square' ?
puts ' and will include one change.'