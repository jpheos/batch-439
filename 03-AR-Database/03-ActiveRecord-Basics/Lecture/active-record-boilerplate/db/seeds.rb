# # db/seeds.rb
# require 'faker'

# puts 'Creating 100 fake restaurants...'
# 100.times do
#   restaurant = Restaurant.new(
#     name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating:  rand(0..5)
#   )
#   restaurant.save!
# end
# puts 'Finished!'


# require "json"
# require "rest-client"

# response = RestClient.get "https://api.github.com/users/lewagon/repos"
# repos = JSON.parse(response)
# # => repos is an `Array` of `Hashes`.

# repos.size
# # => 30

require 'open-uri'
require 'json'

json = open("https://api.github.com/users/lewagon/repos").read
data = JSON.parse(json)


data.each do |d|
  restaurant = Restaurant.new(
    name:    d['name'],
    address: d['full_name'],
    rating:  rand(0..5)
  )
  restaurant.save!

end
