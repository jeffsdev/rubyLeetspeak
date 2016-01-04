class String
  define_method(:leet_word) do |word|
    letters = word.split(//)
    new_letters = []
    for character_number in 0..letters.length - 1
      letter = letters[character_number]
      if (letter == "e" || letter == "E")
        new_letters.push("3")
      elsif (letter == "o" || letter == "O")
        new_letters.push("0")
      elsif (letter == "I")
        new_letters.push("1")
      elsif (letter == "s" || letter == "S") && character_number > 0
        new_letters.push("z")
      else
        new_letters.push(letter)
      end
    end
    new_letters.join()
  end

  define_method(:leetspeak) do
    words = self.split(" ")
    new_words = []
    words.each() do |word|
      new_words.push(leet_word(word))
    end
    new_words.join(" ")
  end
end
