require 'rspec'
require "string_calculator"

describe StringCalculator
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given single input" do
      it "returns 7" do
        expect(StringCalculator.add("7")).to eql(7)
      end
    end

    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

      context "given '17,10'" do
        it "returns 17" do
          expect(StringCalculator.add("17,10")).to eql(27)
        end
      end

      context "handle new line between numbers" do
        it "1\n2,3" do
          expect(StringCalculator.add("1\n2,3")).to eql(6)
        end
      end

      context "support different delimeters" do
        it "1;2;3" do
          expect(StringCalculator.add("1;2;3")).to eql(6)
        end

        it "//;\n1;2" do
          expect(StringCalculator.add("//;\n1;2")).to eql(3)
        end
      end
    end

  end
end
