require 'awesome_print'
require 'yaml'

SSN_REGEX = /\A(?<gender>1|2)(?<year>\d{2})(?<month>0[1-9]|1[0-2])(?<department>0[1-9]|[13-8]\d|2[1-9AB]|9[0-5])\d{6}(?<key>\d{2})\z/

MONTHS = %W[
  XXX
  January
  February
  March
  April
  May
  June
  July
  August
  September
  October
  November
  December
]

DEPARTMENTS = YAML.load_file('data/french_departments.yml')

def month(match_data)
  index = match_data[:month].to_i
  MONTHS[index]
end

def gender(match_data)
  match_data[:gender] == "1" ? "man" : "woman"
end

def year(match_data)
  "19#{match_data[:year]}"
end

def department(match_data)
  number = match_data[:department]
  DEPARTMENTS[number]
end

def valid_key?(match_data)
  number = match_data[0][0...-2].to_i
  key = match_data[:key].to_i
  ((97 - number) % 97) == key
end

def french_ssn_info(ssn)
  ssn.gsub!(/\s/, '')
  if ssn =~ SSN_REGEX
    match_data = ssn.match(SSN_REGEX)

    return "The number is invalid" unless valid_key?(match_data)

    gender = gender(match_data)
    month = month(match_data)
    year = year(match_data)
    department = department(match_data)
    "a #{gender}, born in #{month}, #{year} in #{department}."
  else
    "The number is invalid"
  end
end



