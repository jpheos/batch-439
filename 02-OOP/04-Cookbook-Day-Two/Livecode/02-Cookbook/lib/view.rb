class View
  def display_all(recipes)
    recipes.each_with_index do |recipe, i|
      check = recipe.done? ? "X" : " "
      puts "#{i + 1} - [#{check}] #{recipe.name} | #{recipe.description}"
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

  def ask_index(text = "index?")
    puts text
    print "> "
    gets.chomp.to_i - 1
  end

  def ask_ingredient
    puts "What ingredient would you like a recipe for?"
    print "> "
    result = gets.chomp
    puts ""
    puts "Looking for '#{result}' recipes on the Internet..."
    return result
  end

  def display_importing_recipe(name)
    puts "Importing '#{name}'..."
  end
end
