class UsersController < ApplicationController
    def new
    end
    def create
        @user = User.new(
            email: params[:email],
            password: params[:password],
            password_confirmation: params[:password_confirmation]
        )
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Succesfully created User!!"
            render '/sessions/new'
        else
            render '/users/new'
        end
    end

    def home
    end
    
end
