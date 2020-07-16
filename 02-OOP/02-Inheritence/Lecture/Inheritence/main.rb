require_relative "school_people"
require_relative "student"
require_relative "teacher"

anton = Student.new("anton", "voronin", "Le Wagon", "anton@gmail.com", 32)
jo = Teacher.new("Jo", "Blanchard", "Le Wagon", "jo@gmail.com", 33)

p anton
p anton.full_name
anton.test_grades = [15, 18, 16, 17]
p anton.average_grades

p jo
p jo.full_name
p jo.full_name_and_age

# Does not work
# jo.test_grades = [15, 18, 16, 17]
# p jo.average_grades
