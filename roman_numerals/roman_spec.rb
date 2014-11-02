$LOAD_PATH << File.dirname(__FILE__)

require 'rspec'
require 'roman_numeral.rb'
require 'roman_numeral/translator.rb'
require 'roman_numeral/generator.rb'
require 'roman_numeral/parser.rb'

describe RomanNumeral::Parser do

  describe "#parse" do

    it "takes I and returns 1" do
      expect(described_class.parse("I")).to eq(1)
    end

    it "takes V and returns 5" do
      expect(described_class.parse("V")).to eq(5)
    end

    it "takes IV and returns 4" do
      expect(described_class.parse("IV")).to eq(4)
    end

    it "takes XII and returns 12" do
      expect(described_class.parse("XII")).to eq(12)
    end

    it "takes XIV and returns 14" do
      expect(described_class.parse("XIV")).to eq(14)
    end

    it "takes MMMDC and returns 3600" do
      expect(described_class.parse("MMMDC")).to eq(3600)
    end

    it "takes MDCLXVI and returns 1666" do
      expect(described_class.parse("MDCLXVI")).to eq(1666)
    end

    it "takes 1 and returns I" do
      expect(described_class.parse(1)).to eq("I")
    end

    it "takes 5 and returns V" do
      expect(described_class.parse(5)).to eq("V")
    end

    it "takes 4 and returns IV" do
      expect(described_class.parse(4)).to eq("IV")
    end

    it "takes 12 and returns XII" do
      expect(described_class.parse(12)).to eq("XII")
    end

    it "takes 14 and returns XIV" do
      expect(described_class.parse(14)).to eq("XIV")
    end

    it "takes 3600 and returns MMMDC" do
      expect(described_class.parse(3600)).to eq("MMMDC")
    end

    it "takes 1666 and returns MDCLXVI" do
      expect(described_class.parse(1666)).to eq("MDCLXVI")
    end

    it "takes 4500 and returns MMMMD" do
      expect(described_class.parse(4500)).to eq("MMMMD")
    end
  end
end
