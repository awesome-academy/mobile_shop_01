class UsersController < ApplicationController

  def show
    @user = User.find_by id: params[:id]
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    if @user.save
      flash.now[:success] = t "wellcom"
      redirect_to @user
    else
      flash.now[:fails] = t "error"
      render "new"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :phone, :address, :password, :password_confirmation)
  end
end
