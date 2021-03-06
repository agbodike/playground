require_relative '../collatz'

describe Collatz do

  describe ".calculate_steps" do
    context 'happy path' do
      it "returns 1 when 2 is passed" do
        expect(described_class.calculate_steps(2)).to eq 1
      end

      it "returns 2 when 4 is passed" do
        expect(described_class.calculate_steps(4)).to eq 2
      end

      it "returns 7 when 3 is passed" do
        expect(described_class.calculate_steps(3)).to eq 7
      end

      it "returns 111 when 27 is passed" do
        expect(described_class.calculate_steps(27)).to eq 111
      end

      it "returns 113 when 110 is passed" do
        expect(described_class.calculate_steps(110)).to eq 113
      end

      it "returns 35 when 473 is passed" do
        expect(described_class.calculate_steps(473)).to eq 35
      end
    end

    context 'sad path' do
      context 'when the value is less than 2' do
        it 'raises a validation exception' do
          expect { described_class.calculate_steps(1)  }.to raise_error Collatz::ValidationError
          expect { described_class.calculate_steps(0)  }.to raise_error Collatz::ValidationError
          expect { described_class.calculate_steps(-1) }.to raise_error Collatz::ValidationError
        end
      end

      context 'when the value is not an integer' do
        it 'raises an invalid argument exception' do
          expect { described_class.calculate_steps(2.1)  }.to raise_error Collatz::InvalidArgumentError
          expect { described_class.calculate_steps('a')  }.to raise_error Collatz::InvalidArgumentError
        end
      end
    end
  end
end
