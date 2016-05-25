class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str_arr = str.split(' ')
    str_arr.each_with_index do |word, index|
      if word[-1] == "." || word[-1] == "?"
        punc = word[-1]
      end
      if word.length > 4
        if word[0] == word[0].upcase
          str_arr[index] = "Marklar#{punc}"
        else
          str_arr[index] = "marklar#{punc}"
        end
      end
    end
    return str_arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a = 0
    b = 1
    even_sum = 0
    (1..nth).each do
      if b.even?
        even_sum = even_sum + b
      end
      z = (a + b)
      a = b
      b = z
    end
    return even_sum
  end

end
