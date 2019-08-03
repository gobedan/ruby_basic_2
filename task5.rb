days_in_month = { january: 31, 
  february: 28, 
  march: 31, 
  april: 30, 
  may: 31, 
  june: 30, 
  july: 31, 
  august: 31, 
  september: 30, 
  october: 31, 
  november: 30, 
  december: 31 
}


puts "Enter year ('yyyy'):"
year = gets.chomp.to_i


month = loop do
  puts "Enter month ('mm'):"
  month = gets.chomp.to_i 
  break month if (1..12).include?(month)
  puts "month must be in 1..12!"
end

days_in_month[:february] =  29  if ( year % 4 == 0) && (( year % 100 != 0 ) || ( year % 400 == 0 )) 

max_day = days_in_month.to_a[month-1][1] 

day = loop do 
  puts "Enter day: "
  day = gets.chomp.to_i
  break day if day > 0 && day <= max_day
  puts "No such day in this month!"
end


puts "#{day} of #{days_in_month.keys[month-1]}, #{year}"

puts "Day № #{days_in_month.values.take(month-1).sum(day)}"
