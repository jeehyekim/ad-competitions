class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to user_path
    else
      render :new
    end
  end

  def create
    @user = User.confirm(user_params)

    if @user
      login(@user)
      redirect_to @user
      else   
      redirect_to signup_path 
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end

private
  def user_params
    user_params = params.require(:user).permit(:email, :password)
  end
end
