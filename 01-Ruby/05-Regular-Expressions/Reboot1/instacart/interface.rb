STORE = {
  "kiwi" =>  1.25,
  "banana" =>  0.5,
  "mango" =>  4,
  "asparagus" =>  9
}

CART = Hash.new(0)

def welcome
  puts "> --------------------"
  puts "> Welcome to Instacart"
  puts "> --------------------"
end

def display_store
  puts "> In our store today:"
  STORE.each do |product, price|
    puts "> #{product}: #{price.to_f}€"
  end
  puts "> --------------------"
end

def bill
  total = 0
  puts "> -------BILL---------"
  CART.each do |product, quantity|
    price = STORE[product]
    subtotal = quantity * price
    total += subtotal
    puts "> #{product}: #{quantity} X #{price}€ = #{subtotal}€"
  end

  puts "> TOTAL: #{total}€"
  puts "> --------------------"
end

def quantity
  puts "> How many?"
  gets.chomp.to_i
end

def shopping
  choice = ""

  while choice != 'quit'
    puts "> Which item? (or 'quit' to checkout)"
    print "> "
    choice = gets.chomp
    if STORE.key? choice
      CART[choice] += quantity
    elsif choice != "quit"
      puts "> Sorry, we don't have #{choice} today.."
    end
  end
end

def run
  welcome
  display_store
  shopping
  bill
end


run
