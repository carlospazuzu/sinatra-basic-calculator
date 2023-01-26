describe Sum do

  let(:sum) { Sum.new }

  context 'when two numbers are given' do
    it 'is expected to perform a sum operation between them' do
      expect(sum.solve(2, 2)).to eq(4)
    end
  end

end


