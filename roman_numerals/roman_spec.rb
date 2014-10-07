$LOAD_PATH << File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral_translator.rb'
require 'roman_numeral_generator.rb'

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

describe RomanNumeralGenerator do
  describe "#generate" do

    it "takes 1 and returns I" do
      expect(described_class.generate(1)).to eq("I")
    end

    it "takes 5 and returns V" do
      expect(described_class.generate(5)).to eq("V")
    end

    it "takes 4 and returns IV" do
      expect(described_class.generate(4)).to eq("IV")
    end

    it "takes 12 and returns XII" do
      expect(described_class.generate(12)).to eq("XII")
    end

    it "takes 14 and returns XIV" do
      expect(described_class.generate(14)).to eq("XIV")
    end

    it "takes 3600 and returns MMMDC" do
      expect(described_class.generate(3600)).to eq("MMMDC")
    end

    it "takes 1666 and returns MDCLXVI" do
      expect(described_class.generate(1666)).to eq("MDCLXVI")
    end
  end
end
