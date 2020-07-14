require 'awesome_print'
require 'json'

# TODO - let's read/write data from beers.json
# filepath    = 'data/beers.json'


# serialized_beers = File.read(filepath)


# data = JSON.parse(serialized_beers)


# ap data

# ap data["beers"].map {|beer| beer["name"]}

#####################################################

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  # etc...
]}

filepath    = 'data/beers2.json'


# ap beers
# ap JSON.generate(beers)
# ap beers.to_json

File.open(filepath, 'wb') do |file|
  file.write(JSON.pretty_generate(beers))
end
