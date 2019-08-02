cart_hash = Hash.new()  

loop do 
  puts "Enter product name: \n<< enter \"stop\" to finish" 
  name = gets.chomp.to_sym
  
  break if name == :stop
  
  puts "Enter product price: "
  price = gets.chomp.to_f.abs
  puts "Enter product quantity: "
  quantity = gets.chomp.to_f.abs 

  cart_hash[name] = { price: price, quantity: quantity }

end

puts cart_hash
puts "Total price"
cart_hash.each do |name, inner_hash| 
  puts name.to_s + ": " + (inner_hash[:price]. * inner_hash[:quantity]).to_s
end
