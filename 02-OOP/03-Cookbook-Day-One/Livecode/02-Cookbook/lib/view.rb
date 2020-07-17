class View
  def display_all(recipes)
    recipes.each_with_index do |recipe, i|
      puts "#{i + 1} - #{recipe.name} | #{recipe.description}"
    end
  end

  def ask_recipe_name
    puts "name?"
    print "> "
    gets.chomp
  end

  def ask_recipe_description
    puts "description?"
    print "> "
    gets.chomp
  end

  def ask_index
    puts "index?"
    print "> "
    gets.chomp.to_i - 1
  end
end
