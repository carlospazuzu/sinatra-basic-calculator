require 'sinatra/base'
require_relative 'entities/calculator'

class Server < Sinatra::Base
  get '/' do
    erb :index, locals: { result: 0 }
  end

  post '/' do
    operand1 = params[:operand1].to_f
    operand2 = params[:operand2].to_f
    sign = params[:sign]
    result = Calculator.calculate(operand1, operand2, sign)
    erb :index, locals: { result: result }
  end
end

