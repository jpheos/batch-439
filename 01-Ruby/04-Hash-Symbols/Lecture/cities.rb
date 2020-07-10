require 'awesome_print'

cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}


ap cities.values.map { |city| city["monument"] }


# ap cities.values
# ap monuments

# [
#     [0] {
#          "country" => "England",
#         "monument" => "Big Ben"
#     },
#     [1] {
#          "country" => "France",
#         "monument" => "Tour Eiffel"
#     }
# ]


# [
#     [0] "Big Ben",
#     [1] "Tour Eiffel"
# ]
