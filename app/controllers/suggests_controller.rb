class SuggestsController < ApplicationController
  
  def new
    @suggest = Suggest.new
  end

  def create
    @suggest = Suggest.new(params[:suggest])
    @suggest.request = request
    if @suggest.deliver
      flash.now[:notice] = 'Thank you for your submission. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end