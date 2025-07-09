require 'rspec'
require "string_calculator"

describe StringCalculator
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given '7'" do
      it "returns 7" do
        expect(StringCalculator.add("7")).to eql(7)
      end
    end

  end
end
