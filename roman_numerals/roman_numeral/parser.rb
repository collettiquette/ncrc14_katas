module RomanNumeral
  class Parser

    def self.parse(input)
      new(input).parse
    end

    def initialize(input)
      @input = input
    end

    def parse
      if @input.class == Fixnum
        Generator.generate(@input) 
      else
        Translator.translate(@input)
      end
    end

  end
end
