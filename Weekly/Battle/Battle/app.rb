require 'sinatra/base'



class Battle < Sinatra::Base 
   enable :sessions

    get '/' do 
        erb :index
    end 

    post '/names' do 
        session[:player_1_name] = params[:player_1_name]
        session[:player_2_name] = params[:player_2_name]
        redirect '/play'    
    end


    get '/play/' do 
        @player_1_name = session[:player_1_name] 
        @player_2_name = session[:player_2_name]    
        erb :play
    end 

    get 'attack' do
        @player_1_name = session[:player_1_name] 
        @player_2_name = session[:player_2_name]    
        erb :attack

    # start the server if ruby file executed directory 
    run! if app_file == $0
end 











# <form action="/">


# </form>

# p params 
# @name = params[:player_1]
# @name = params[:player_2]

#         erb:index 
