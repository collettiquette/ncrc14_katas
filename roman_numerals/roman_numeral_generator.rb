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
    cleanup_numeral
  end

  def numeral_amounts
    [1000, 500, 100, 50, 10, 5, 1]
  end

  def cleanup_numeral
    num_count = 0
    cur_numeral = ""
    @roman_numeral.each_with_index do |numeral,i|
      if cur_numeral == numeral
        num_count += 1
      else
        cur_numeral = numeral
        num_count = 1
      end

      if num_count == 4
        next_numeral_amount = (RomanNumeralTranslator::ROMAN_DICTIONARY[numeral.to_sym]*5).to_s
        (1..3).each {|j| @roman_numeral[i-j] = "" }
        @roman_numeral[i] = numeral
        @roman_numeral[i+1] = ROMAN_DICTIONARY[next_numeral_amount]
      end
    end
    @roman_numeral
  end

end

