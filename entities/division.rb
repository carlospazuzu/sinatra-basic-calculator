require_relative 'math_operation'

class Division < MathOperation
  SIGN = '/'

  def self.solve(operand1, operand2)
    return operand1 / operand2.to_f unless operand2 == 0
    raise ZeroDivisionError
  end

end

