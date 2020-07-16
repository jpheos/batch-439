class Student < SchoolPeople
  attr_accessor :test_grades

  def average_grades
    @test_grades.sum.fdiv(@test_grades.size)
  end
end
