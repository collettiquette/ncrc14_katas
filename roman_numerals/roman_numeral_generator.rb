class RomanNumeralGenerator
  ROMAN_DICTIONARY = { "1"    => "I",
                       "5"    => "V",
                       "10"   => "X",
                       "50"   => "L",
                       "100"  => "C",
                       "500"  => "D",
                       "1000" => "M", }

  def self.generate(num)
    new(num).generate
  end

  def initialize(num)
    @num = num
    @roman_numeral = []
  end

  def generate
    append_numerals.join("")
  end

  private

  def append_numerals
    numeral_amounts.each do |amount|
      (@num / amount).times do 
        @roman_numeral.push ROMAN_DICTIONARY[amount.to_s]
      end
      @num %= amount
      break if @num == 0
    end
    @roman_numeral
  end

  def numeral_amounts
    [1000, 500, 100, 50, 10, 5, 1]
  end

end

