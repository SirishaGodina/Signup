class SessionsController < ApplicationController
    def new
    end
   def create
         user = User.find_by(email: params[:email])
         
         if (user && user.authenticate(params[:password]))
         session[:user_id] = user.id
         flash[:notice] = 'Successfully Logged In!'
         redirect_to '/user_details/move_to' 
         
         else
         flash[:notice] = 'Invalid Username or Password'
         render '/sessions/new'

         end
         
    
   end
    def destroy
     session[:user_id] = nil
     @current_user = nil
     flash.now[:notice] = 'Successfully Logged Out!'
     render '/sessions/new'
    end
end
