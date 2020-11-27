class UsersController < ApplicationController
    get '/signup' do
        if User.find_by(:email => params["email"])
            redirect '/login'
        else
            erb :'users/new'
        end
    end
end