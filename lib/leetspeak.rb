class String
  define_method(:leet_word) do |word|
    letters = word.split(//)
    new_letters = []
    letters.each() do |letter|
      if (letter == "e")
        new_letters.push("3")
      elsif (letter == "o")
        new_letters.push("0")
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
