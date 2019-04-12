require 'sinatra/base'

class App < Sinatra::Base

 get '/newteam' do
    erb :newteam
  end

   post '/team' do
    @name = params["teamname"]
    @coach = params["coach"]
    @pg = params["pointguard"]
    @sg = params["safeguard"]
    @sf = params["smallforward"]
    @pf = params["powerforward"]
    @center = params["center"]

    erb :team
  end

end
