class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    whitelisted = params.require(:user).permit(:email)
    user = User.new(whitelisted)

    if user.save
      redirect_to user_path(user)
    else
      redirect_to new_user_path
    end
  end

end