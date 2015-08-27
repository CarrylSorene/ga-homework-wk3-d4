train_lines = {
  :line_n => ['TS', '34', '28', '23', 'US', '8'],
  :line_l => ['8', '6', 'US', '3', '1'],
  :line_6 => ['GC', '33', '28', '23', 'US', 'AP']
}

# changes = 'no' #not required since there's only 1 on these 3 lines, but in theory would define
stop_number = 0

puts 'Which line do you want to start on?'
line_start_input = gets.chomp.downcase
puts 'Which station are you starting from?'
station_start = gets.chomp.downcase
puts 'Which station are you going to?'
station_end = gets.chomp.downcase
puts 'Which line do you want to finish on?'
line_end_input = gets.chomp.downcase

#determine correct line in hash depending on user input 

if line_start_input == 'n'
   line_start = :line_n
elsif line_start_input == 'l'
   line_start = :line_l
elsif line_start_input == '6'
   line_start = :line_6
end

# calculate stops - if they're on same line

if line_start == :line_n && train_lines[:line_n].index.(station_start)
  stops = train_lines[:line_n].index.(station_end) - train_lines[:line_n].index.(station_start)
  # stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
elsif
  line_start == :line_l && train_lines[:line_l].index.(station_start)
  stops = train_lines[:line_l].index.(station_end) - train_lines[:line_l].index.(station_start)
  # stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
elsif 
  line_start == :line_6 && train_lines[:line_6].index.(station_start)
  stops = train_lines[:line_6].index.(station_end) - train_lines[:line_6].index.(station_start)
  # stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
end

#Find index of intersection on each array

# start_us_index = train_lines(line).index('US') # use this var to calc stops from intersection - add to no of stops either side
# end_us_index = train_lines(line).index('US')

# if line_start == line_n && train_lines[:line_n].index.(station_start)


# calculate stops- if they change lines





# start_index = train_lines(line).index(station_start)
# end_index = train_lines(line).index(station_end)




# puts 'Your journey will include ' + stop_number.to_s + ' stops'
# changes = 'one'
# puts ' and will include one change.'