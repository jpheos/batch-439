require_relative 'calculator'

def do_a_calcul
  # afficher la phrase :"Enter a first number" (puts)
  puts "> Enter a first number:"
  print '> '

  # on stock un nombre dans `first_number` (gets.chomp) (attention un nombre c'est un integer :-)
  first_number = gets.chomp.to_i

  # afficher la deuxieme phrase
  puts "> Enter a second one:"
  print '> '

  # stocker le deuxieme nombre
  second_number = gets.chomp.to_i

  # afficher "choose operation" (penser à lui dire quel type d'opération il peut faire)
  puts "> Choose operation [+][-][*][/]"
  print '> '

  # stocker l'operator dans une variable (gets.chomp)
  operator = gets.chomp

  # on calcul le résultat
  # dans une variable `result`
  result = calculate(first_number, second_number, operator)

  # on affiche le résultat (interpolation)
  puts "> Result: #{result}"
end

def run
  # on déclare une varaible `choice`, qu'on assign à 'Y'
  choice = 'Y'
  # tant que choice == 'Y'
  while choice == 'Y'
    do_a_calcul

    # on demande si il veut en refaire un (puts)
    puts "> Do you want to calculate again? [Y/N]"
    print '> '

    # on stock dans `choice` 'Y' ou 'N'
    choice = gets.chomp
  end
end

run

