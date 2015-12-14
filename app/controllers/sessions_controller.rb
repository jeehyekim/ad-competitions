class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to user_path
    else
      render :new
    end
  end

  def create
    @user = User.find_by(email: user_params[:email])
    # if User.confirm(params[:email], params[:password])
    if @user.authenticate(user_params[:password])
      #save the user's id into the session
      session[:user_id] = @user.id
      #redirect to the show page
      redirect_to user_path(@user.id)
    else
      # show errors
      # @sessions_error = flash[:error] = "Username or password incorrect"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

private
  def user_params
    user_params = params.require(:user).permit(:email, :password_digest)
  end
end
