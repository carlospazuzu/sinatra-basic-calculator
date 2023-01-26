require_relative 'division'
require_relative 'sum'
require_relative 'subtraction'
require_relative 'multiplication'

class Calculator

  def self.calculate(operand1, operand2, sign)
    case sign
    when Sum::SIGN;            Sum.solve(operand1, operand2)
    when Subtraction::SIGN;    Subtraction.solve(operand1, operand2)
    when Multiplication::SIGN; Multiplication.solve(operand1, operand2)
    when Division::SIGN;       Division.solve(operand1, operand2)
    else raise NoMethodError
    end
  end
end

