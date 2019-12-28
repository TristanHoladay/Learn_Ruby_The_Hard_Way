require 'sinatra'
require './lib/gothonweb/map.rb'
require './bin/users.rb'
require './bin/storing_users.rb'

set :port, 8080
set :static, true
set :public_folder, File.dirname(__FILE__) + '/static'
set :views, "views"
enable :sessions
set :session_secret, 'BADSECRET'

include Users
include StoringNames

# def authorize!
#   redirect '/login' unless authorized?
# end

get '/' do
  session[:room] = 'START'
  redirect to('/login')
end

post '/player' do
  #code to verify account
  @name = params[:username]
  @password = params[:password]

  StoringNames.store_users('names.txt', @name, @password)
  # validation = UserValidator.new(@name, @password, read_user_creds)
  #
  #
  # @names = read_names
  # validation = UserValidator.new()
  # #or code to create account
  username = params[:username]
  erb :player, :locals => {'username' => username}
end

get '/login' do
  erb :login
end

get '/signup' do
  erb :sign_up
end


get '/game' do
  room = Map::load_room(session)

  if room
    erb :show_room, :locals => {:room => room}
  else
    erb :you_died
  end
end

get '/error' do
  erb :invalid_response
end

post '/game' do
    room = Map::load_room(session)
    action = params[:action]

    if action != nil && room.paths.include?(action) == false
      redirect to('/error')
    end

    if room
        next_room = room.go(action) || room.go("*")

        if next_room
            Map::save_room(session, next_room)
        end

        redirect to('/game')
    else
        erb :you_died
    end
end


# get '/hello/' do
#   erb :hello_form
# end
#
# post '/hello/' do
#   greeting = params[:greeting] || "Hi There"
#   name = params[:name] || "Nobody"
#
#   erb :index, :locals => {'greeting' => greeting, 'name' => name}
# end
#
# post '/save_image' do
#
#   @filename = params[:file][:filename]
#   file = params[:file][:tempfile]
#
#   File.open("./public/#{@filename}", 'wb') do |f|
#     f.write(file.read)
#   end
#
#   erb :show_image
#end
