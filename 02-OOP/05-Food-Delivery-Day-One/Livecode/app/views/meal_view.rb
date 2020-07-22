class MealView
  def ask_for(something)
    puts "What is the meal #{something}"
    return gets.chomp
  end

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} | #{meal.name} #{meal.price}"
    end
  end
end
