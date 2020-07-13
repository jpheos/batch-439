require 'awesome_print'
require_relative 'play'

def continue?
  puts "Voulez vous continuer? [Y/N]"
  print "> "
  gets.chomp == 'Y'
end

def run
  balance = 20
  continue = true

  puts "--- BONJOUR ---"

  while continue && balance >= 10
    balance -= 10 # mise
    win = play?
    balance += 50 if win
    if balance >= 10
      puts "votre balance: #{balance}€"
      continue = continue?
    else
      puts "va travailler"
    end
  end
end

run

