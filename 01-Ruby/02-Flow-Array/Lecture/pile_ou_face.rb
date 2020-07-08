print "> pile ou face : "
choice = gets.chomp

random = %w[pile face].sample

status = random == choice ? 'gagné' : 'perdu'

puts "vous avez #{status}"







# def fonction1
#   ghvh
# end

# def fonction2

# end


# condition ? fonction1 : fonction2
