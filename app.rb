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
    @peeps = Peep.all
    erb :index
  end

  post '/all_peeps' do
    Peep.create(peep: params[:peep])
    redirect '/all_peeps'
  end

  get '/all_peeps' do 
    @peeps = Peep.all
    erb :index
  end

  
  run! if app_file == $0

end