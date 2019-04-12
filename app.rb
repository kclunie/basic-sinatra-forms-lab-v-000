require 'sinatra/base'

class App < Sinatra::Base

 get '/newteam' do
    erb :newteam
  end

   post '/team' do
    @teamname = params["teamname"]
    @coach = params["coach"]
    @pointguard = params["pointguard"]
    @safeguard = params["safeguard"]
    @smallforward = params["smallforward"]
    @powerforward = params["powerforward"]
    @center = params["center"]

    erb :team
  end

end
