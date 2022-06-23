class SessionsController < ApplicationController
    def new
    end
   def create
    user = User.find_by(email: params[:email])
    if(params[:email].empty? || params[:password].empty?)
      flash[:notice] = 'Email/Password cant be blank'
      render '/sessions/new'
    elsif user && user.authenticate(params[:password])
     session[:user_id] = user.id
     flash[:notice] = 'Successfully Logged In!'
     
     if(user.user_detail.present?)        
        redirect_to '/user_details/show'
     else
        render '/user_details/details1'
     end
    else
     flash[:notice] = 'Invalid Username or Password'
     render '/sessions/new'
    end
   end
    def destroy
     session[:user_id] = nil
     flash[:success] = 'Successfully Logged Out!'
     render '/sessions/new'
    end
end
