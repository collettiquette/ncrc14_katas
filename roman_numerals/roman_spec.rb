$LOAD_PATH << File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral_translator.rb'
require 'roman_numeral_partitioner.rb'

describe RomanNumeralTranslator do
  describe "#translate" do

    xit "takes I and returns 1" do
      expect(described_class.translate("I")).to eq(1)
    end

    xit "takes V and returns 5" do
      expect(described_class.translate("V")).to eq(5)
    end

    xit "takes IV and returns 4" do
      expect(described_class.translate("IV")).to eq(4)
    end

    xit "takes MMMDC and returns 3600" do
      expect(described_class.translate("MMMDC")).to eq(3600)
    end

  end
end

describe RomanNumeralPartitioner do
  describe "#partition" do
    let(:roman_numeral_partitioner) { described_class.new("MMMDC","M") }

    it "partitions at the given order numeral" do
      expect(roman_numeral_partitioner.partition).to eq(["MMM", "DC"])
    end 

  end
end 
