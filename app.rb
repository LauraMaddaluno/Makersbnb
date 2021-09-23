require 'sinatra/base'
require 'sinatra/reloader'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  # configure do 
  #   enable :sessions
  # end

  get '/' do
    'Welcome!'
  end

  get '/listspace' do
    erb :new_space
  end

  post '/newspace' do
    'Hello'
  end

  run! if app_file == $0
end
