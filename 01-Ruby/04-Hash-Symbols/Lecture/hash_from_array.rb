require 'awesome_print'

# students     = ["toto", "titi", "tata"]
# students_age = [32    , 12    , 56    ]

# students.each_with_index do |student, i|
#   age = students_age[i]
#   puts "#{student} (#{age})"
# end


# students = {
#   "toto" => 32,
#   "titi" => 12,
#   "tata" => 56,
# }


# p students["tata"]


paris = {
  "country" => "France",
  "population" => 2211000,
  "xxx" => nil
}


# ap paris

# ap paris["country"]

paris["monument"] = "Tour eiffel"

# ap paris

paris["population"] = 2211001
paris["population"] += 1


# paris.delete("country")



# paris.each do |key, value|
#   puts "#{key} ========> #{value}"
# end




ap paris.key? 'xxx'
ap paris.key? 'totot'

ap paris.keys
ap paris.values


