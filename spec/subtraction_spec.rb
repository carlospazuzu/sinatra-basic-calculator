describe Subtraction do
  context 'when two numbers are given' do
    it 'performs a subtraction operation between them' do
      expect(Subtraction.solve(10, 13)).to eq(-3)
    end
  end

  context 'when an object different from a numeric is given' do
    it { expect{ Subtraction.solve('d', 20) }.to raise_error(TypeError) }
  end
end

