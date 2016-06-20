class Exercise

  def self.marklar(str)
    str_array = str.split(" ").map do |word|
      (word.length <= 4) ? word : marklar_print(word)
    end
    str_array*" "
  end

  def self.marklar_print(word)
    punc = ('!'..'?').to_a.include?(word[-1]) ? word[-1] : ''
    (word[0] == word[0].upcase) ? 'Marklar' + punc : 'marklar' + punc
  end

  def self.even_fibonacci(nth)
    sequence = []
    num = 1
    prev_num = 0

    while sequence.length <= nth
      run_sequence(sequence, num, prev_num, nth)
    end

    sequence[0..(nth - 1)].inject(0) { |sum, num| num.even? ? sum + num : sum }
  end

  def self.run_sequence(sequence, num, prev_num, nth)
    while sequence.length <= nth
      sequence << num
      num += prev_num
      sequence << num
      prev_num = num
      num = sequence[-1] + sequence[-2]
    end
  end
end
