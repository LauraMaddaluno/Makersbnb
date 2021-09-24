require 'sinatra/base'
require 'sinatra/reloader'
require './lib/view_space'
require 'pry'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  configure do
    enable :sessions
  end

  get '/' do 
    erb :homepage 
  end
  post '/signup' do
   erb :sign_up
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
    erb :new_space, layout: :prova
  end

  get '/listspace' do
    erb :new_space
  end

  post '/space' do

    Space.create(name: params['name'], description: params['description'],
                price_per_night: params['price_per_night'].to_i, available_from: params['available_from'],
                available_to: params['available_to'])
    redirect '/newspace'
  end

  get '/newspace' do
    @space = Space.all
    erb :view_space
  end

  run! if app_file == $0
end
