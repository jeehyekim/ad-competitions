class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create 
    
    if user_params[:email] === "art.design.competitions@gmail.com"
      user_params.admin = true
      @user = User.new(user_params)
    end
      
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
