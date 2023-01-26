describe Subtraction do

  let(:subtraction) { Subtraction.new }

  context 'when two numbers are given' do
    it 'is expected to perform a subtraction operation between them' do
      expect(subtraction.solve(10, 13)).to eq(-3)
    end
  end

end

