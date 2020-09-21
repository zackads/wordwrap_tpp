RSpec.describe Wordwrap do
  describe '.wrap' do
    context 'given an empty string' do
      it 'returns an empty string' do
        expect(described_class.wrap('', 5)).to eq('')
      end
    end

    context 'given a string shorter than wrap length' do
      it 'returns the string' do
        expect(described_class.wrap('hello', 5)).to eq('hello')
      end
    end

    context 'given another string shorter than wrap length' do
      it 'returns the string' do
        expect(described_class.wrap('world', 5)).to eq('world')
      end
    end

    context 'given a string longer than wrap length 5' do
      it 'adds \n to string' do
        expect(described_class.wrap('mountain', 5)).to eq('mount\nain')
      end
    end

    context 'given another string longer than wrap length 5' do
      it 'adds \n to string' do
        expect(described_class.wrap('wilderbeas', 5)).to eq('wilde\nrbeas')
      end
    end

    context 'given another string longer than wrap length 5' do
      it 'adds \n to string' do
        expect(described_class.wrap('rhinocoras', 5)).to eq('rhino\ncoras')
      end
    end

    context 'given another string longer than wrap length 6' do
      it 'adds \n to string' do
        expect(described_class.wrap('rhinocoras', 6)).to eq('rhinoc\noras')
      end
    end

    context 'given another string longer than wrap length 7' do
      it 'adds \n to string' do
        expect(described_class.wrap('rhinocoras', 7)).to eq('rhinoco\nras')
      end
    end

    context 'given a string 2x longer than wrap length 3' do
      it 'wraps at the length-th position twice' do
        expect(described_class.wrap('beautiful', 3)).to eq('bea\nuti\nful')
        expect(described_class.wrap('beaitiful', 3)).to eq('bea\niti\nful')
      end
    end

    context 'given another string 2x longer than wrap length 3' do
      it 'wraps at the length-th position twice' do
        expect(described_class.wrap('parrot', 2)).to eq('pa\nrr\not')
      end
    end

    context 'given another string 2x longer than wrap length 4' do
      it 'wraps at the length-th position twice' do
        expect(described_class.wrap('applesauce', 4)).to eq('appl\nesau\nce')
      end
    end

    context 'given another string 3x longer than wrap length 2' do
      it 'wraps at the length-th position thrice' do
        expect(described_class.wrap('chocolat', 2)).to eq('ch\noc\nol\nat')
      end
    end

  end
end
