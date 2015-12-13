class CategoriesController < ApplicationController

  def index 
    @competitions = Competition.tagged_with(params[:tag])
    @category = params[:tag]
    # @competition = Competition.first.tags(params[:tag_id])
  end

end
