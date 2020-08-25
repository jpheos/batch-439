json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address, :created_at, :toto
end
