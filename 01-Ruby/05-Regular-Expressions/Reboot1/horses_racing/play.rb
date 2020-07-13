# on déclare un tableau de chevaux

HORSES = %W[toto titi tata tutu]


# on affiche les chevaux disponibles
# 1 - Toto
# 2 - Titi
# ...
def display_horses
  puts "Voici les chevaux disponibles:"
  HORSES.each_with_index do |horse, i|
    puts "#{i + 1} - #{horse}"
  end
end

# on enregistre l'index du cheval
#   - on affiche le message : "Votre choix? > "
#   - gets chomp
#   - on fait un -1
def get_choice
  print "Votre choix? > "
  gets.chomp.to_i - 1
end

# déterminer un gagnant
#  - random d'un index du tableau
#  - si 4 chevaux, je veux un nombre entre 0 et 3 (rand)
def random_winner
  rand(HORSES.size)
end

def print_winner(winner_horse, winner_index)
  puts "#{winner_horse} (#{winner_index + 1}) a gagné.."
end

def display_result(win)
  if win
    puts "Bravo!! Vous avez gagné!"
  else
    puts "désolé, cela sera pour la prochaine fois 😉"
  end
end

def play?
  display_horses
  choice = get_choice
  winner_index = random_winner
  winner_horse = HORSES[winner_index]
  print_winner(winner_horse, winner_index)
  win = winner_index == choice
  display_result(win)
  win
end
