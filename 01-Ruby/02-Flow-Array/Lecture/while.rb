# price      = rand(1..5)
# user_price = nil

# while user_price != price
#   print '> your price: '
#   user_price = gets.chomp.to_i
# end

# puts "BRAVO!!!"


price      = rand(1..5)
user_price = nil

until user_price == price
  print '> your price: '
  user_price = gets.chomp.to_i
end

puts "BRAVO!!!"
