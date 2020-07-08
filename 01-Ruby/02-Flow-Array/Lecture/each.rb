names = %W[toto tata titi]



# i = 0
# while i < names.size
#   name = names[i]
#   puts "bonjour #{name}!"
#   i += 1
# end

names.each do |name|
  puts "bonjour #{name}!"
end
