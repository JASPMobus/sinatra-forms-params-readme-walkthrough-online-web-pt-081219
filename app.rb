require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :views, "views"
  end

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post "/food" do
    @name = params[:name]
    @favorite_food = params[:favorite_food]
    
    erb :food 
  end
end