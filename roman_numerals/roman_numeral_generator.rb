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
    ROMAN_DICTIONARY.keys.reverse.map(&:to_i)
  end

  def next_numeral_amount(numeral)
    (RomanNumeralTranslator::ROMAN_DICTIONARY[numeral.to_sym]*5).to_s
  end

  def correct_numeral_syntax(numeral,index)
    (1..3).each {|j| @roman_numeral[index-j] = "" }
    @roman_numeral[index] = numeral
    @roman_numeral[index+1] = ROMAN_DICTIONARY[next_numeral_amount(numeral)]
  end

  def cleanup_numeral
    num_count = 0
    cur = ""

    @roman_numeral.each_with_index do |numeral,i|
      
      if cur == numeral
        num_count += 1
      else
        cur = numeral
        num_count = 1
      end

      correct_numeral_syntax(numeral,i) if num_count == 4 && numeral != "M"
    end
    @roman_numeral
  end

end

