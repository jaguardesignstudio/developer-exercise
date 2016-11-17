class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.split(" ")

    str.map! do |word|
      if word.length >= 5 && word == word.capitalize
        word.gsub(/\b\w+\b/, "Marklar")
      elsif word.length >= 5 && word != word.capitalize
        word.gsub(/\b\w+\b/, "marklar")
      else
        word
      end
    end

    str.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
    a = [1, 1]

    while a.length < nth
      a << a[-2] + a[-1]
    end

    a.each { |num| sum += num if num % 2 == 0 }
    sum 
  end

end
