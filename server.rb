require 'sinatra'

get '/' do
  erb :index, locals: { name: 'Pazuzu' }
end
