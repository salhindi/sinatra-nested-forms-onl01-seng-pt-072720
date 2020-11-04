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
      @pirates = Pirates.new(params[:pirate])
      binding.pry
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
