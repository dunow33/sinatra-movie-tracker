class UsersController < ApplicationController
    get '/signup' do
        if User.find_by(:email => params["email"])
            redirect '/login'
        else
            erb :'users/new'
        end
    end

    post '/users' do
        @user = User.new(params)

        if @user.save
            session[:user_id] = @user.id
            redirect "/movies"
        else
            erb :"/users/new"
        end
    end
end