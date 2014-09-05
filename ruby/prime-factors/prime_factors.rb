class PrimeFactors
  def self.for number
    factors = []
    leftover = number
    (2..number).each do |div|
      break if leftover == 1
      while leftover % div == 0
        leftover /= div
        factors << div
      end
    end
    factors
  end
end
