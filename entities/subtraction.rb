require_relative 'math_operation'

class Subtraction < MathOperation
  SIGN = '-'

  def self.solve(operand1, operand2)
    super(operand1, operand2)
    operand1 - operand2
  end

end

