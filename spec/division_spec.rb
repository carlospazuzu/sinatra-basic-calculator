describe Division do

  let(:division) { Division.new }

  context 'when receives a zero as the second argument' do
    it { expect{division.solve(10, 0)}.to raise_error(ZeroDivisionError) }
  end

  context 'when two integers or floating point numbers are given' do
    it 'is expected to perform an integer division' do
      expect(division.solve(20, 5)).to eq(4)
    end
    it 'is expected to perform a floating-point number division' do
      expect(division.solve(15, 2)).to eq(7.5)
    end
  end

end
