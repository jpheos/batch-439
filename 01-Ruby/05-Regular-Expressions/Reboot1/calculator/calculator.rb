def calculate(first_number, second_number, operator)
  if operator == "+"
    first_number + second_number
  elsif operator == '-'
    first_number - second_number
  elsif operator == '/'
    first_number.fdiv(second_number)
  elsif operator == '*'
    first_number * second_number
  end
end
