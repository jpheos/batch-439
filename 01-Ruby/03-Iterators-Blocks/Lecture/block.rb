# def timer
#   puts "start timer..."
#   time_start = Time.now
#   yield
#   puts "stop timer..."
#   time_end = Time.now
#   puts "time: #{time_end - time_start}"
# end


# timer do
#   puts "je suis au début de mon block"
#   sleep(2)
#   puts "je suis à la fin mon block"
# end


# puts "

# ---------------------


# "

# timer do
#   sleep(4)
# end



def beautify_name(first_name, last_name)
  full_n = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_n)
end

puts beautify_name('john', 'lennon') { |full_name| "Hello, #{full_name}" }
puts beautify_name('joe', 'toto') { |full_name| "Bye, #{full_name}" }
puts beautify_name('joe', 'toto') { |full_name| "COUCOU, #{full_name}" }

