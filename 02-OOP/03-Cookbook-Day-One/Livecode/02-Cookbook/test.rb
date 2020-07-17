require 'awesome_print'
require_relative 'lib/cookbook'
require_relative 'lib/controller'

cookbook = Cookbook.new('lib/recipes.csv')


controller = Controller.new(cookbook)

controller.destroy
