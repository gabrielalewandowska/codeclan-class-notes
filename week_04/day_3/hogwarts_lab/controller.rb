require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("./models/student.rb")
also_reload("./models/*")

get '/students' do
  @students = Student.all
  erb(:index)
end

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

get '/' do
  erb(:home)
end

post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

get '/students/:id/edit' do
  @houses = House.all()
  @student = Student.find(params[:id])
  erb(:edit)
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete
  redirect to ("/students")
end

post '/students/:id' do
  @student = Student.new(params)
  @student.update
  redirect to('/students')
end
