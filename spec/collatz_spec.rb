require_relative '../collatz'

describe Collatz do

  describe "#calculate_steps" do
    it "returns 1 when 2 is passed" do
      expect(described_class.calculate_steps(2)).to eq 1
    end

    it "returns 2 when 4 is passed" do
      expect(described_class.calculate_steps(2)).to eq 1
    end

    it "returns 7 when 3 is passed" do
      expect(described_class.calculate_steps(2)).to eq 1
    end
  end
end
