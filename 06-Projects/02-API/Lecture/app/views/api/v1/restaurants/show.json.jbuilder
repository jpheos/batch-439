json.extract! @restaurant, :id, :name, :address, :created_at, :toto
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content, :created_at
end
