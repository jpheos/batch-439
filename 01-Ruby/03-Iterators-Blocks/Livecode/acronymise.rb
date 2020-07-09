def acronymise(string)
  words = string.split # on découpe en mots
  words.map { |word| word[0].upcase }.join
end

