require_relative '../collatz'

describe Collatz do

  describe ".calculate_steps" do
    context 'happy path' do
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

    context 'sad path' do
      context 'when the value is less than 1' do
        xit 'raises a validation exception' do
        end
      end

      context 'when the value is not an integer' do
        xit 'raises an invalid argument exception' do
        end
      end
    end
  end
end
