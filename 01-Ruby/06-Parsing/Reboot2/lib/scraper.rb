require 'nokogiri'
require 'awesome_print'
require 'open-uri'

def scraper(idea)
  url = "https://www.etsy.com/search?q=#{idea}"

  # 1. We get the HTML page content
  html_content = URI.open(url)
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  arr = []
  doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
    # 4. For each item found, we extract its title and print it
    arr << element.text.strip
  end

  arr.sort_by {|element| element.size}.first(5)
end
