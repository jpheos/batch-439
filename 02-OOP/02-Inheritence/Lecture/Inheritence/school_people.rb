class SchoolPeople
  attr_accessor :first_name, :last_name, :school_name, :email, :age

  # def initialize(args = {})
  def initialize(first_name, last_name, school_name, email, age)
    @first_name  = first_name
    @last_name   = last_name
    @school_name = school_name
    @email       = email
    @age         = age
  end

  def full_name
    return "#{@first_name} #{@last_name}"
  end
end








# id
# school_name
# school_location

# Non partagé
# grades

# self.gender [Mr, Mrs]
