describe Multiplication do
  context 'when two numbers are given' do
    it 'performs a multiplication operation between them' do
      expect(Multiplication.solve(6, 5)).to eq(30)
    end
  end

  context 'when an object different from a numeric is given' do
    it { expect{ Multiplication.solve('d', 20) }.to raise_error(TypeError) }
  end
end

