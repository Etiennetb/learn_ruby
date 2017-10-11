#Correction Felix

def is_vowel?(letter)
  ["a", "e", "i", "o", "u", "y"].include? letter
end


def translate_one_word(word)
  if is_vowel?(word[0])
    word + "ay"
  else
    number_of_consonants = 1
    while !is_vowel?(word[number_of_consonants])
      number_of_consonants += 1
    end
    if word[number_of_consonants] == "u"
      word[number_of_consonants + 1..-1] + word[0...number_of_consonants] + "u" + "ay"
    else
      word[number_of_consonants..-1] + word[0...number_of_consonants] + "ay"
    end
  end
end

def translate(sentence)
  array_of_words = sentence.split(" ")
  new_array = array_of_words.map do |word|
    word = translate_one_word(word)
  end
  new_array.join(" ")
end

