require_relative 'recipe'
require 'awesome_print'
require 'nokogiri'
require 'open-uri'
require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    update_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    update_csv
  end

  def marmitton_scrapper(search_keyword)
    url = "https://www.marmiton.org/recettes/recherche.aspx?aqt=#{search_keyword}"
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    # ap doc.search(".recipe-card__title")
    array = []
    doc.search(".recipe-card__title").take(5).each do |element|
      array << Recipe.new(element.text, 'WIP')
    end
    return array
  end

  def mark_a_recipe_as_done(index)
    @recipes[index].mark_as_done!
    update_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
      @recipes << Recipe.new(row[0], row[1], row[2])
    end
  end

  def update_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.done? ]
      end
    end
  end
end
