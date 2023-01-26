describe Sum do
  context 'when two numbers are given' do
    it 'performs a sum operation between them' do
      expect(Sum.solve(2, 2)).to eq(4)
    end
  end

  context 'when an object different from a numeric is given' do
    it { expect{ Sum.solve('d', 20) }.to raise_error(TypeError) }
  end
end

