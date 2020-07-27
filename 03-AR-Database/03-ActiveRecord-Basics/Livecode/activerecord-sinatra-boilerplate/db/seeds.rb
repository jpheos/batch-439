require 'faker'

10.times do
  ap "----"

  name = Faker::Coffee.blend_name

  address = Faker::Address.street_address

  restaurant = Restaurant.new(name: name, address: address)

  restaurant.save!
end


