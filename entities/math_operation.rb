class MathOperation
  SIGN = nil

  def self.solve(operand1, operand2)
    raise TypeError unless operand1.kind_of?(Numeric) && operand2.kind_of?(Numeric)
  end
end
