def acronymize(sentence)
  words = sentence.split
  result = []
  words.each do |word|
    result << word[0].upcase
  end
  result.join
end
