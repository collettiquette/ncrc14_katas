module RomanNumeral
  class Translator
    
    def self.translate(roman_numerals)
      new(roman_numerals).translate
    end

    def initialize(roman_numerals)
      @roman_numerals = roman_numerals.split("")
      @total_arabic_value = 0
    end

    def translate
      @roman_numerals.each_with_index do |r,i|
        add_or_subtract_numeral(r,i) if @roman_numerals[i+1]
      end
      add_arabic_value_of(@roman_numerals.last)
    end

    private

    def add_or_subtract_numeral(numeral,index)
      if numeral_larger_than_next?(numeral,index)
        add_arabic_value_of(numeral)
      else
        subtract_arabic_value_of(numeral)
      end
    end

    def numeral_larger_than_next?(numeral,index)
      arabic_value_of(numeral) >= arabic_value_of(@roman_numerals[index+1])
    end

    def add_arabic_value_of(numeral)
      @total_arabic_value += arabic_value_of(numeral)
    end

    def subtract_arabic_value_of(numeral)
      @total_arabic_value -= arabic_value_of(numeral)
    end

    def arabic_value_of(numeral)
      DICTIONARY[numeral.to_sym]
    end

  end
end