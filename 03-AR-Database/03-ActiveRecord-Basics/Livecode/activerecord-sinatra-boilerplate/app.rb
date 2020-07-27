require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end


get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post '/restaurants' do
  r = Restaurant.new(params)
  r.save
  redirect '/'
end

# As a user I can list all the restaurants


#   Avoir une liste de restaurant
#     - avoir une db
#       rake db:create
#     - avoir une table de restaurants
#       - créer un fichier de migration
#         - create_table
#       - rake db:migrate
#     - créer le model Restaurant
#      - ajouter un fichier restaurant.rb dans un dossier models

#     - faire des seeds
#       faker + boucle


#     - test final
#       rake console
#       > ap Restaurant.all



# As a user I can see one restaurant's details
# As a user I can add a restaurant
