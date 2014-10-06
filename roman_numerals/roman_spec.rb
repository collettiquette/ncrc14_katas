$LOAD_PATH << File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral_translator.rb'

describe RomanNumeralTranslator do
  describe "#translate" do

    it "takes I and returns 1" do
      expect(described_class.translate("I")).to eq(1)
    end

    it "takes V and returns 5" do
      expect(described_class.translate("V")).to eq(5)
    end

    it "takes IV and returns 4" do
      expect(described_class.translate("IV")).to eq(4)
    end

    it "takes XII and returns 12" do
      expect(described_class.translate("XII")).to eq(12)
    end

    it "takes XIV and returns 14" do
      expect(described_class.translate("XIV")).to eq(14)
    end

    it "takes MMMDC and returns 3600" do
      expect(described_class.translate("MMMDC")).to eq(3600)
    end

    it "takes MDCLXVI and returns 1666" do
      expect(described_class.translate("MDCLXVI")).to eq(1666)
    end
  end
end
