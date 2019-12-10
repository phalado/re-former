class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # if @user.update
    #   redirect_to new_user_path
    # end
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(username: params[:username], email: params[:email], password: [:password])
   @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def user_params
  params.require(:user).permit(:username, :email, :password)
  end

end
