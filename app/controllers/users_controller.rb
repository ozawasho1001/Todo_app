class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    if @user.save
      redirect_to root_path, success: '登録できました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
end
