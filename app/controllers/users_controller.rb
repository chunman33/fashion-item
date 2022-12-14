class UsersController < ApplicationController
  def index
    @user = current_user
    @items = @user.items
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
  
   private
  
  def user_params
    params.require(:user).permit(:image, :name, :introduction)
  end

  

end
