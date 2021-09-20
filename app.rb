require 'sinatra/base'
require 'sinatra/reloader'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/' do
    'Welcome!'
  end
  
end
