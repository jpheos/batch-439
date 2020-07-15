class Citizen
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
  end
  def can_vote?
    # @age >= 18 ? true : false
    @age >= 18
  end
  def full_name
    "#{@first_name} #{@last_name}"
  end
end
