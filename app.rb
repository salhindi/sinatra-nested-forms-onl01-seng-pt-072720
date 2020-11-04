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
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
    
    
      @ships.map do |s|
        Ship.new(s)
      end
        
        
      @ships = Ship.all
      
      
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
