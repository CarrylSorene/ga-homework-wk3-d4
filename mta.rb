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

#determine correct line in hash depending on user input for start and end lines

if line_start_input == 'n'
   line_start = :line_n
elsif line_start_input == 'l'
   line_start = :line_l
elsif line_start_input == '6'
   line_start = :line_6
end

if line_end_input == 'n'
   line_end = :line_n
elsif line_end_input == 'l'
   line_end = :line_l
elsif line_end_input == '6'
   line_end = :line_6
end

# calculate stops - if they're on same line

if line_start == :line_n && line_end == :line_n
  stops = train_lines[:line_n].index(station_end) - train_lines[:line_n].index(station_start)
  stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
elsif
  line_start == :line_l && line_end == :line_l
  stops = train_lines[:line_l].index(station_end) - train_lines[:line_l].index(station_start)
  stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
elsif 
  line_start == :line_6 && line_end == :line_6
  stops = train_lines[:line_6].index(station_end) - train_lines[:line_6].index(station_start)
  stops = stops.abs
  puts 'Your journey will include ' + stops.to_s + ' stops'
end

# #Find index of intersection on each array - confused now on how to work it out

# start_us_index = train_lines[line_start].index('US') # use this var to calc stops from intersection - add to no of stops either side
# end_us_index = train_lines[line_start].index('US')

# # calc both legs of journey if changing at intersection, depending on which line user starts from #better as a case (but options are all different)

# if 
#   line_start == line_n && line_end == line_l ||
#   line_start == line_n && line_end == line_6
# stops = 
#   (train_lines[:line_n].index(station_end) - 
#   train_lines[:line_n].index(end_us_index)) + 
#   (train_lines[:line_n].index(start_us_index) - 
#   train_lines[:line_n].index(station_start)) 
# stops = stops.abs
# elsif
#   line_start == line_l && line_end == line_6 ||
#   line_start == line_l && line_end == line_n 
# stops = 
#   (train_lines[:line_l].index(station_end) - 
#   train_lines[:line_l].index(end_us_index)) + 
#   (train_lines[:line_l].index(start_us_index) - 
#   train_lines[:line_l].index(station_start)) 
# stops = stops.abs
# elsif
  
#   line_start == line_6 && line_end == line_n ||
#   line_start == line_6 && line_end == line_l 
# stops = 
#   (train_lines[:line_6].index(station_end) - 
#   train_lines[:line_6].index(end_us_index)) + 
#   (train_lines[:line_6].index(start_us_index) - 
#   train_lines[:line_6].index(station_start)) 
# stops = stops.abs
# end

# puts 'Your journey will include ' + stops.to_s + ' stops'
# changes = 'one'
# puts ' and will include ' + changes + ' change.'