require_relative 'student'

student1 = Student.new('Anton', 'M2', 'Le Wagon')
student2 = Student.new('Yoann', 'M2', 'Le Wagon')

puts "----------------------"

student1.last_name = "Voronin"
student2.last_name = "Verdelhan"

p student1.last_name
p student2.last_name

student1.toto

puts "----------------------"

p student1.birthday

p student1
p student2
