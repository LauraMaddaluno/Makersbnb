require 'sinatra/base'
require 'sinatra/reloader'
require './lib/view_space'

class Makersbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  get '/space' do
    @space = Space.all(name:)
    erb :view_space
  end
  

  run! if app_file == $0

end
