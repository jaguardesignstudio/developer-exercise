require 'pry-byebug'

class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    # TODO: Implement this method

    words = str.split

    words.each_with_index do |word, index|

        if word.length > 4
            p "length greater than 4 #{word}"
            # repl_word = replaced_with_marklar(word)
            words[index] = replaced_with_marklar(word)
            p "#{words[index]}"
            # binding.pry
        end
    end

    return words.join(" ")

  end

  def self.replaced_with_marklar(word)

      p "reaplced with marklar called #{word}"

      if word[0].match(/[[:upper:]]/)
          word = "Marklar"
      else
          word = "marklar"
      end

      return word

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
  end

end
