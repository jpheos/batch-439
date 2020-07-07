require 'date'
require 'awesome_print'

def nb_days_before_xmas(day = Date.today)
  xmas_day = Date.new(day.year, 12, 25)
  xmas_day = xmas_day.next_year if day > xmas_day
  (xmas_day - day).to_i
end


# ap nb_days_before_xmas.class == Integer
# ap nb_days_before_xmas == 171
# ap nb_days_before_xmas(day_before) == 1
# ap nb_days_before_xmas(day_after) == 364


day_before = Date.new(2020, 12, 24)
day_after = Date.new(2020, 12, 26)
day_january = Date.new(2021, 01, 26)

ap "---------------------------------"
ap nb_days_before_xmas
ap "---------------------------------"
ap nb_days_before_xmas(day_before)
ap "---------------------------------"
ap nb_days_before_xmas(day_after)
ap "---------------------------------"
ap nb_days_before_xmas(day_january)
