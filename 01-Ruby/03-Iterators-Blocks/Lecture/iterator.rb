require 'awesome_print'

musicians = ['David Gilmour',
             'Roger Waters',
             'Richard Wright',
             'Nick Mason']



# for i in 0...(musicians.size)
#   musician = musicians[i]
#   # ap i
#   # ap musician
#   puts "#{i + 1} - #{musician}"
# end


# for musician in musicians
#   puts musician
# end

# musicians.each do |musician|
#   puts musician
# end

# musicians.each_with_index do |musician, i|
#   puts "#{i + 1} - #{musician}"
# end

# musicians_upcase = musicians.map do |musician|
#   size = musician.size
#   "#{musician} (#{size})"
# end
# ap musicians_upcase
# ap musicians


# count = musicians.count do |musician|
#   musician.start_with? 'R'
# end

# ap count

# musicians_with_r = musicians.select do |musician|
#   # musician.start_with?('R') && musician.size > 13
# end
# ap musicians_with_r

# musicians_without_r = musicians.reject do |musician|
#   musician.start_with? 'R'
# end
# ap musicians_without_r




# ap musicians.count { |musician| musician.start_with? 'R' }






