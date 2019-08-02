vowels_hash = {}
latin = ("A".."Z").to_a 
vowels_arr = ["A", "E", "I", "O", "U"]

latin.each.with_index do |letter, i|
  vowels_hash.store(letter, i+1) if vowels_arr.include?(letter)
end

puts vowels_hash
