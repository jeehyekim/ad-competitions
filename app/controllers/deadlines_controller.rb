class DeadlinesController < ApplicationController

  def new
    @deadline = Deadline.new
  end

  def create
    @deadline = Deadline.create(:user_id => params[:user_id], :competition_id => params[:competition_id])
    if @deadline.save
      # flash success message
      p @deadline

      if request.xhr?
        render :json => {
          :deadline => @deadline
        }
      end

    else
      redirect_to user_path
    end
  end


end
