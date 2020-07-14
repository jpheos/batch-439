require 'awesome_print'
require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/ssaunier'


json = open(url).read

data = JSON.parse(json)


puts "#{data['name']} - #{data['bio']}"
