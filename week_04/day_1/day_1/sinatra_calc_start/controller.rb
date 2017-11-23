require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/calculator')
require('json')

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end


get '/all/:num1/:num2' do

  content_type(:json)

  calc = Calculator.new(params[:num1].to_f,
  params[:num2].to_f)

  results = {
    add: calc.add,
    subtract: calc.subtract,
    divide: calc.divide,
    multiply: calc.multiply
  }

  return results.to_json
end

get '/add/:number1/:number2' do
  calculator = Calculator.new(params[:number1].to_i,
  params[:number2].to_i)
  @answer = calculator.add
  erb(:result)
end

get '/subtract/:number1/:number2' do
  calculator = Calculator.new(params[:number1].to_i,
  params[:number2].to_i)
  @answer = calculator.subtract
  return erb(:result)
end

get '/multiply/:number1/:number2' do
  calculator = Calculator.new(params[:number1].to_i,
  params[:number2].to_i)
  return "result: #{calculator.multiply}"
end

get '/divide/:number1/:number2' do
  calculator = Calculator.new(params[:number1].to_f,
  params[:number2].to_f)
  @answer = calculator.divide
  return erb(:result)
end
