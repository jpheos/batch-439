require_relative 'scraper'
require 'yaml'
require 'awesome_print'

data = fetch_movies_url.map do |url|
  ap "je fetch #{url} ... "
  scrape_movie(url)
end


File.open('movie.yml', 'w') {|f| f.write data.to_yaml }
