class UsersController < ApplicationController
 def index
    @title = "All users"
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @title = @user.username
  end
  
end
