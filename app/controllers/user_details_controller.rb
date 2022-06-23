class UserDetailsController < ApplicationController
    before_action :require_login, only: [:show]
    
     def details1
       
        session[:first_name] = params[:first_name]
        session[:last_name] = params[:last_name]
        session[:phone_no] = params[:phone_no]
        
        render '/user_details/details2'
        
     end

    
    def create
        @user_details = UserDetail.new(
            first_name: session[:first_name],
            last_name: session[:last_name],
            phone_no: session[:phone_no],
            bank_account_no: params[:bank_account_no],
            ifsc: params[:ifsc],
            swift_no: params[:swift_no],
            user_id: session[:user_id]
        )
        if @user_details.save 
            session[:user_details_id] =  @user_details.id      
            flash[:notice] = "Succesfully created User!!"
            redirect_to '/user_details/show'
        else
            render '/user_details/details2' 
        end
        
    end

    def move_to
        
        if (current_user && current_user.user_detail.present?)
            redirect_to '/user_details/show' 
        else
            render '/user_details/details1'
        end
    end

    def show
        @userdetail = UserDetail.find(session[:user_details_id])
    end

    private
 
  def require_login
    unless current_user
      flash[:notice] = "You must be logged in to access this section"
      redirect_to 'sessions/new'
    end
  end
end
