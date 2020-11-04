require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do 
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      binding.pry
      @pirates = Pirate.new(params[:pirate])
      
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
