class CategoriesController < ApplicationController

  def index 
    @competitions = Competition.all
    @category = params[:tag]
    # @competition = Competition.first.tags(params[:tag_id])
  end

end
