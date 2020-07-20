require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display_all(recipes)
  end

  def create
    name = @view.ask_recipe_name
    description = @view.ask_recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    index = @view.ask_index
    @cookbook.remove_recipe(index)
  end

  def mark_a_recipe_as_done
    list
    index = @view.ask_index("Which recipe would you like to mark as done? (enter index)")
    @cookbook.mark_a_recipe_as_done(index)
  end

  def scrapping
    search_ingredient = @view.ask_ingredient
    marmitton_recipes = @cookbook.marmitton_scrapper(search_ingredient)
    @view.display_all(marmitton_recipes)
    index = @view.ask_index("Which recipe would you like to import? (enter index)")
    recipe = marmitton_recipes[index]
    @view.display_importing_recipe(recipe.name)
    @cookbook.add_recipe(recipe)
  end
end
