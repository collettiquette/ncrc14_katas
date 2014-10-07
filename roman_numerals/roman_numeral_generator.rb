class RomanNumeralGenerator

  def self.generate(num)
    new(num).generate
  end

  def initialize(num)
    @num = num
  end

  def generate
    ""
  end

end

