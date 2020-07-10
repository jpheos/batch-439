Q1 - What's a variable? What's the point of using variables? Give an example.

c'est un containeur où on peut stocker des données
On y fait référence avec un nom
name = "toto"


Q2 - Precisely describe the following line of code using the correct vocabulary.
age = 18

On déclare une variable 'age'
On lui assigne pour valeur l'entier 18


Q3 - What's a method? What's the point of defining methods?

c'est un bout de code
elle peut prendre des paramètres (on l'appelle en lui donnant des arguements)
elle retourne forcément une valeur (cela peut être nil) (par défaut la dernière ligne)
cela évite d'écrire plusieurs fois le même bout de code
elle a un role précis, et s'occupe de faire UN truc de précis.


Q4 - Precisely describe what happens at each line using good vocabulary.
1 def multiply(x, y)
2   return x * y
3 end
4
5 puts multiply(5, 8)

1 on définie une méthode avec deux paramètres x et y
2 on retourne la multiplication de x par y (pas besoin du return normalement)
3 on ferme la méthode
4 rien
5 on affiche de retour de l'appel de la fonction multiply en lui passant 5 et 8 en arguments



Q5 - What's the keyword if ? Give us an example of if statements, using an age variable storing a student's age for


cela permet d'exectuter un bout de code ou non. Pour cela on a besoin de lui donner une condition

age = 90

if age > 62
  puts "bonne retraite!"
else
  puts "courage, c'est pour bientôt ;-)"
end



Q6 - Complete the following code to compute the exact average of students grades (using  each ).

grades = [19, 8, 11, 15, 13]

avg = 0
grades.each do |note|
  avg = (avg + note)
end
avg / grades.size.to_f



Q7 - Define a capitalize_name  method which takes first name and last name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  "#{first_name.capitalize} #{last_name.capitalize}"
end


Q8 - Let's speak of the type String . What's the difference between concatenation and interpolation? Give an example.


- L'interpolation den marche que avec des doubles quotes.
- Une interpolation on construit une chaine de caractères
- Une concatenation on joint des chaînes les unes avec les autres.

var = "toto"

"ma varaible: #{var}" => interpolation
"ma varaible: " + var => concatenation


fruits = ["banana", "peach", "watermelon", "orange"]

 Print out "peach" from the fruits array in the terminal
 puts fruits[1]


 Add an "apple" to the fruits array
 fruits << "apple"

 Replace "watermelon" by "pear"
 fruits[2] = "pear"

 Delete "orange"

 fruits.delete("orange")
 fruits.delete_at(3)


Q10 - Translate each line of pseudo-code into ruby.

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
  puts city[:name]
# Add the Eiffel Tower to city with the `:monument` key
  city[:monument] = 'Eiffel Tower'
# Update the population to 2000001
  city[:population] = 2000001
  city[:population] = city[:population] + 1
  city[:population] += 1
# What will the following code return?
  city[:mayor] #=> nil

Q11 - Use the map iterator to convert the variable students , an array of arrays, into an array of hashes.
 Those hashes should have two keys: :name  and :age  . What is the type of those keys?


students = [
              [ "john", 28 ],
              [ "mary", 25 ],
              [ "paul", 21 ]
           ]

students.map do |student|
  {
    name: student[0],
    age: student[1]
  }
end


# [
#   {
#     name: "john",
#     age: 28
#   },
#   {
#     name: "mary",
#     age: 25
#   },
#   {
#     name: "paul",
#     age: 21
#   }
# ]





