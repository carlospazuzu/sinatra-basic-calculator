describe MathOperation do
  context 'when non-numeric arguments are passed' do 
    it 'raises a TypeError if the first argument is a non-numeric object' do
      expect{ MathOperation.solve('a', 2).to raise_error(TypeError) }
    end

    it 'raises a TypeError if the second argument is a non-numeric object' do
      expect{ MathOperation.solve(2, 'b').to raise_error(TypeError) }
    end

    it 'raises a TypeError if both arguments are a non-numeric object' do
      expect{ MathOperation.solve('a', 'b').to raise_error(TypeError) }
    end
  end
end

