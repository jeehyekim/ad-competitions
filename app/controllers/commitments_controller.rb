class CommitmentsController < ApplicationController

  def new
    @commitment = Commitment.new
  end

  def create
    @commitment = Commitment.create(:user_id => params[:user_id], :competition_id => params[:competition_id])
    if @commitment.save
      # flash success message
      p @commitment
    else
      redirect_to user_path
    end
  end

  def destroy
    @commitment = Commitment.find(params[:id])
    @commitment.destroy!
    redirect_to user_path(current_user.id)
  end

end
