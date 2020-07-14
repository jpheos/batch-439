# ruby interface.rb

# > Welcome to your Christmas gift list
# > Which action [list|add|delete|quit]?
# > list
# > TODO: list items
# > Which action [list|add|delete|quit]?
# > add
# > TODO: ask user an item and add it to gift list
# > Which action [list|add|delete|quit]?
# > delete
# > TODO: ask user the index of item to delete and delete it
# > Which action [list|add|delete|quit]?
# > quit
# > Goodbye

require_relative 'scraper'

GIFTS = [
  {
    name: 'roller',
    marked: false
  },
  {
    name: 'chocolat',
    marked: true
  }
]



def welcome
  puts "> Welcome to your Christmas gift list"
end

def list
  puts "> Votre list:"
  GIFTS.each_with_index do |gift, i|
    marked = gift[:marked] ? 'X' : ' '
    puts "> #{i + 1} - [#{marked}] #{gift[:name]}"
  end
end

def add
  puts "> What do you want to add?"
  gift_name = gets.chomp
  GIFTS << { name: gift_name, marked: false }
end

def delete
  puts "> Which gift you want to remove? (Enter number 🙏)"
  list
  gift_index = gets.chomp.to_i - 1
  GIFTS.delete_at(gift_index)
end

def mark
  puts "> Which gift you want to mark? (Enter number 🙏)"
  list
  gift_index = gets.chomp.to_i - 1
  gift = GIFTS[gift_index]
  gift[:marked] = true
end

def idea
  puts "> What are you looking for on Etsy?"
  print '> '
  response = gets.chomp
  puts "> Here are Etsy results for '#{response}':"
  results = scraper(response)
  results.each_with_index do |result, i|
    puts "#{i + 1} - #{result}"
  end
  puts "> Pick one to add to your list (give the number)"
  result_index = gets.chomp.to_i - 1
  gift_name = results[result_index]
  GIFTS << { name: gift_name, marked: false }
  puts "'#{gift_name}' added to your wishlist"
end

def actions
  choice = ""
  while choice != "quit"
    puts "\n\n> Which action [list|add|delete|mark|idea|quit]?"
    choice = gets.chomp
    case choice
    when "list"   then list
    when "add"    then add
    when "delete" then delete
    when "mark"   then mark
    when "idea"   then idea
    end
  end
end

actions
