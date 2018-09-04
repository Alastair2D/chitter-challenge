require './lib/peep'
require 'sinatra/base'
require 'sinatra/flash'
require 'uri'

class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    'Hello world'
  end

  get '/peeps' do 
    erb :index
  end

  

  run! if app_file == $0

end