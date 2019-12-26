require 'sinatra'
# require './views/stream.rb'
set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

enable :session

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/guns' do
  erb :guns
end

get '/gear' do

end

get '/videos' do
  erb :videos
end

get '/classes' do
  erb :classes
end

get '/Life' do
end



post '/uptake' do
  # if params[:image] && params[:image][:filename]
    @filename = params[:file][:filename]
    session['image'] = @filename
    file = params[:file][:tempfile]

    File.open("./static/#{@filename}", 'wb') do |f|
      f.write(file.read)
    end
  #end

  erb :display_image, :locals => {'filename' => @filename }
end

get '/uptake' do
  erb :form
end
