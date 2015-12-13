class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.save
      UserMailer.registration_confirmation(@user).deliver_now
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @commitments = Commitment.where(user_id: @user_id)
    render :show
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
    params.require(:user).permit(:name, :email, :password_digest)
  end

end
