class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    unless @user.save
      render 'new'
    else
      sign_in(@user)
      flash[:success] = "Welcome!!! And Hello World"
      redirect_to @user
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
