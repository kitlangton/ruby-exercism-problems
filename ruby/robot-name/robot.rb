class Robot
  LETTERS = ('a'..'z').to_a << ('A'..'Z').to_a
  NUMBERS = (0..9).to_a

  def name
    @name ||= generate
  end

  def reset
    @name = nil
  end

  private

  def generate
    @name = rand_letters(2) + rand_numbers(3)
  end

  def rand_letters(n)
    result = ""
    n.times do
      result << LETTERS[rand(LETTERS.length)].to_s
    end
    result
  end

  def rand_numbers(n)
    result = ""
    n.times do
      result << NUMBERS[rand(NUMBERS.length)].to_s
    end
    result
  end

end
