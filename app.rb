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
      
      @ships = Ship.all
      
      @ships.map do |s|
      
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
