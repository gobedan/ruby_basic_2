days_in_month = { January: 31, 
  February: 28, 
  March: 31, 
  April: 30, 
  May: 31, 
  June: 30, 
  July: 31, 
  August: 31, 
  September: 30, 
  October: 31, 
  November: 30, 
  December: 31 
}

days_in_month_leap = Hash.new()
days_in_month_leap.replace(days_in_month)
days_in_month_leap[:February] = 29 

leap = false 
month = nil
day = nil


puts "Enter year ('yyyy'):"
year = gets.chomp.to_i
leap = ( year % 4 == 0)  && (( year % 100 != 0 ) || ( year % 400 == 0 ))

loop do
  puts "Enter month ('mm'):"
  month = gets.chomp.to_i 
  break if (1..12).include?(month)
  puts "month must be in 1..12!"
end

max_day = leap ? days_in_month_leap.to_a[month-1][1] : days_in_month.to_a[month-1][1]

puts leap
puts max_day 

loop do 
  puts "Enter day: "
  day = gets.chomp.to_i
  break if day > 0 && day <= max_day
  puts "No such day in this month!"
end
