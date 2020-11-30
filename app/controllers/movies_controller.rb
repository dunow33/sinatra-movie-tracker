class MoviesController < ApplicationController
    get '/movies' do 
        if session["user_id"]
            @user = current_user
            @movies = @user.movies
            erb :'movies/index'
        else
            redirect '/login'
        end
      end
end