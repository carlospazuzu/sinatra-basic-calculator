require_relative 'math_operation'

class Multiplication < MathOperation
  SIGN = '*'

  def self.solve(operand1, operand2)
    super(operand1, operand2)
    operand1 * operand2
  end

end
