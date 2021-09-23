require 'sinatra/base'
require 'sinatra/reloader'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  configure do
    enable :sessions
  end

  get '/signup' do
    erb :sign_up
  end
  
  post '/details' do
    @first_name = params[:first_name]
    session[:first_name] = params[:first_name]
    session[:last_name] = params[:last_name]
    session[:email] = params[:email]
    session[:username] = params[:username]
    session[:password] = params[:password]
    session[:password_con] = params[:password_con]
    erb :new_space
  end

  get '/listspace' do
    erb :new_space
  end

  post '/newspace' do
    'Hello'
  end

  run! if app_file == $0
end
