def convert_to_pig_latin(sentence)
  sentence.split(' ').map do |word|
    punctuation = word[-1].match?(/[[:punct:]]/) ? word[-1] : ''
    clean_word = word.chomp(punctuation)

    pig_latin_word = if clean_word.length > 1
                       clean_word[1..-1] + clean_word[0] + 'ay'
                     else
                       clean_word + 'ay'
                     end

    pig_latin_word + punctuation
  end.join(' ')
end

puts convert_to_pig_latin("Hello world!")
puts convert_to_pig_latin("I love Ruby programming!")
