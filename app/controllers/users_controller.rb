class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.avatar.variant(resize: '50x50')
      redirect_to users_path, success: 'Created successfully.'
    else
      render :new
    end
  end

  private def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
