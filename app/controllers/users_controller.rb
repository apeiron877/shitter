class UsersController < ApplicationController
 before_filter :admin_user, :only => :destroy
 
 
 
 def index
    @title = "All users"
    @users = User.paginate(:page => params[:page])
    
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(:page => params[:page])
    @title = @user.username
  end
  
  def destroy
   #redirect_to cancel_user_registration_path
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end
  
  
  
  private
  
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
  
  
  
  
end
