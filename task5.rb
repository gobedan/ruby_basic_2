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


leap = false 

puts "Enter year ('yyyy'):"
year = gets.chomp.to_i
leap = ( year % 4 == 0)  && (( year % 100 != 0 ) || ( year % 400 == 0 ))

month = loop do
  puts "Enter month ('mm'):"
  month = gets.chomp.to_i 
  break month if (1..12).include?(month)
  puts "month must be in 1..12!"
end

days_in_month[:February] =  leap ? 29 : 28 
max_day = days_in_month.to_a[month-1][1] 

day = loop do 
  puts "Enter day: "
  day = gets.chomp.to_i
  break day if day > 0 && day <= max_day
  puts "No such day in this month!"
end

puts "#{day} of #{days_in_month.to_a[month-1][0]}, #{year}"
