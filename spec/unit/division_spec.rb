describe Division do
  context 'when receives a zero as the second argument' do
    it { expect{Division.solve(10, 0)}.to raise_error(ZeroDivisionError) }
  end

  context 'when two integers or floating point numbers are given' do
    it 'performs an integer division' do
      expect(Division.solve(20, 5)).to eq(4)
    end
    it 'performs a floating-point number division' do
      expect(Division.solve(15, 2)).to eq(7.5)
    end
  end

  context 'when an object different from a numeric is given' do
    it { expect{ Division.solve('d', 20) }.to raise_error(TypeError) }
  end
end

