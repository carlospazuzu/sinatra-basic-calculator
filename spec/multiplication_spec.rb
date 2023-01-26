describe Multiplication do

  let(:multiplication) { Multiplication.new }

  context 'when two numbers are given' do
    it 'is expected to perform a multiplication operation between them' do
      expect(multiplication.solve(6, 5)).to eq(30)
    end
  end

end
