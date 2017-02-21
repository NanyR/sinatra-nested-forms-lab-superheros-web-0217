require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :form
    end

    post '/teams' do
      @new_team=Team.new(params[:team])
      params[:team][:heroes].each do |hero|
        Hero.new(hero)
      end
      @heroes=Hero.all
      erb :results
    end




end
