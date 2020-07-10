require 'awesome_print'

def tag(name, content, attributes = {})
  # ap name
  # ap content
  # ap attributes

  attr = attributes.map {|key, value| " #{key}='#{value}'" }.join
  "<#{name}#{attr}>#{content}</#{name}>"
end


ap tag("h1", "Hello world")
ap "--------------------------------"
 # => <h1>Hello world</h1>

ap tag("h1", "Hello world", class: "bold")
 # => <h1 class='bold'>Hello world</h1>

ap "--------------------------------"
ap tag("a", "Le Wagon", class: "btn", href: "http://lewagon.org")
 # => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

