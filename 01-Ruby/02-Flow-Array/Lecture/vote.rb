print "> Rentrez votre age : "
age = gets.chomp.to_i

if age >= 18
  puts "vous pouvez voter"
else
  puts "dommage..."
end
