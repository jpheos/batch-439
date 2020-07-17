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
end
