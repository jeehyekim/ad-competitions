class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  # LOGIN
  def create
    @user = User.create(params[:user_id])
    if @user && @user.authenticate(params[:password])
      log_in @user
      redirect_to user_path(@user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  # LOGOUT
  def destroy
    log_out
    redirect_to root_path
  end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
