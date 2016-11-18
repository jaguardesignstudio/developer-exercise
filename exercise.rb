class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    capSub = str.gsub(/\b[A-Z][a-z]{4,}/, "Marklar")
                .gsub(/\b(?![Mm]arklar)\w{5,}/, "marklar")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
   firstNum = 0
   secondNum = 1
    fibNum = 1

  for i in 2..nth
    fibNum = firstNum + secondNum
    firstNum = secondNum
    secondNum = fibNum
    sum += (fibNum % 2 == 0) ? fibNum : 0
  end
  return sum
  end

end
