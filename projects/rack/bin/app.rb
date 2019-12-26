require 'sinatra'
require './name_validator.rb'
require './storing_names.rb'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"
set :show_exceptions, :after_handler

use Rack::MethodOverride
include StoringNames

  enable :sessions

# get '/' do
#   return "hello world!"
# end



get '/' do
  erb :form
end

error pepsi do
  'So what happened was...' + env['sinatra.error'].message
end

helpers do
  def person(name, age)
    "#{name} is #{age} years old."
  end
end

post '/info' do
  @name = params[:name]
  @age = params[:age]
  redirect to('/:name')
end

get '/:name' do
  raise pepsi, 'the end of the world'
end

post '/monstas' do
  @name = params["name"]
  @names = read_names
  validator = NameValidator.new(@name, read_names)

  if validator.valid?
    store_name("names.txt", @name)
    session[:message] = "Successfully stored the name #{@name}!"
    redirect "/monstas?name=#{@name}"
  else
    @message = validator.message
    erb :monstas
  end
end

get '/monstas' do
  @message = session.delete(:message)
  @name = params["name"]
  @names = read_names
  erb :monstas
end
