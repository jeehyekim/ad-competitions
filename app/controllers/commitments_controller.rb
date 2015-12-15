class CommitmentsController < ApplicationController

  def new
    @commitment = Commitment.new
  end

  def create
    @commitment = Commitment.create(:user_id => current_user.id, :competition_id => params[:competition_id])
    if @commitment.save
      # flash success message

      # add deadlines to user
      
      p @commitment
      if request.xhr?
        render :json => {
          :commitment => @commitment
        }
      end
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
