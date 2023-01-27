describe Calculator do
  context 'when two numeric arguments are given' do
    it "performs a sum if '+' sign is given" do
      expect(Calculator.calculate(2, 3, '+')).to eq(5) 
    end
    it "performs a subtraction if '-' sign is given" do
      expect( Calculator.calculate(-2, -2, '-') ).to eq(0) 
    end
    it "performs a multiplication if '*' sign is given" do
      expect( Calculator.calculate(20, 5, '*') ).to eq(100) 
    end
    it "performs a division if '/' sign is given" do
      expect( Calculator.calculate(40, 10, '/') ).to eq(4) 
    end
  end

  context 'when wrong arguments are passed' do
    it 'raises a TypeError if a non numeric argument is given' do
      expect{ Calculator.calculate(10, '10', '+') }.to raise_error(TypeError)
    end
    it 'raises a NoMethodError if the sign parameter is nil or missing' do
      expect{ Calculator.calculate(10, 10, nil) }.to raise_error(NoMethodError)
    end
  end
end

