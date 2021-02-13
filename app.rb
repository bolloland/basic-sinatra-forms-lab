require 'sinatra/base'

class App < Sinatra::Base

    get "/newteam" do
        erb :newteam
    end

    post "/team" do
       
        puts params
        @team_name = params[:name]
        @coach = params[:coach]
        @point = params[:pg]
        @shoot = params[:sg]
        @small = params[:sf]
        @power = params[:pf]
        @cent = params[:c]
        
        erb :team
    end

end
