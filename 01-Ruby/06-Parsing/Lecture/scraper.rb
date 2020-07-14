require 'nokogiri'
require 'awesome_print'
require 'open-uri'

HEADER_REGEX = /(?<title>.+) \((?<year>\d+)\)/

def fetch_movies_url
  content = open("https://www.imdb.com/chart/top/").read

  doc = Nokogiri::HTML(content)
  doc.css('td.titleColumn a').first(5).map do |link|
    "https://www.imdb.com" + link.attribute('href')
  end
end


def cast(doc)
  doc.css('.cast_list tr td:nth-child(2)').first(3).map do |td|
    td.text.strip
  end
end

def director(doc)
  doc.css('.credit_summary_item a').first.text
end

def storyline(doc)
  doc.css('.summary_text').first.text.strip
end

def scrape_movie(url)
  content = open(url).read
  doc = Nokogiri::HTML(content)

  h1 = doc.css('h1').first.text.strip
  header = h1.match(HEADER_REGEX)

  {
    cast: cast(doc),
    director: director(doc),
    storyline: storyline(doc),
    title: header[:title],
    year: header[:year].to_i
  }
end

