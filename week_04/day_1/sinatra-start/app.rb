require('sinatra')
require("sinatra/contrib/all") if development?

get '/hi' do
  return "Hello, world!"
end

get '/roll-die' do
  return "Rolling the die: #{rand(1..6)}"
end

get '/name/:first/:last' do
  return params.to_s
end

get '/name/:first/:last' do
  return "Hi, #{params[:first]} #{params[:last]}"
end

get '/friends/ross' do
  return "Go away, Ross!"
end

get '/friends/:id' do
  friends = ["Joey", "Phoebe", "Monica", "Chandler", "Rachel", "Ross"]

  index = params[:id].to_i
  return friends[index]
end
