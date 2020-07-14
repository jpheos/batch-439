require 'awesome_print'
require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com

ingredient = 'chocolat'

url = "https://www.bbcgoodfood.com/search/recipes?query=#{ingredient}"



html_file = open(url).read


html_doc = Nokogiri::HTML(html_file)


html_doc.search('.teaser-item__title a').each do |element|
  puts "\n\n"
  ap element.text.strip
  ap "https://www.bbcgoodfood.com#{element.attribute('href').value}"
end
