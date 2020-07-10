require 'awesome_print'
require 'open-uri'
require 'json'

puts "username github?"
print "> "
username = gets.chomp

url = "https://api.github.com/users/#{username}"


data = open(url).read

ap JSON.parse(data).class
