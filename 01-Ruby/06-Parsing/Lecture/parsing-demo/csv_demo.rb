require 'awesome_print'
require 'csv'

# # TODO - let's read/write data from beers.csv
# filepath    = 'data/beers.csv'
# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }


# CSV.foreach(filepath, csv_options) do |row|
#   puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
# end


#####################################################


filepath    = 'data/beers2.csv'


csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  # ...
end
