class Teacher < SchoolPeople
  def full_name
    super + " Teacher"
  end

  def full_name_and_age
    # p self.methods
    self.full_name + " a #{@age} ans"
  end
end
