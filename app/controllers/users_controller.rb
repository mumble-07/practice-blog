class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end


  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render :new
      end
  end

  private
  def user_params 
    params.require(:user).permit(:first_name, :last_name, :middle_name, :age, :gender)
  end
end