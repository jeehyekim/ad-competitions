class CompetitionsController < ApplicationController

  def index
    if params[:tag]
      @competitions = Competition.tagged_with(params[:tag])
    else
      @competitions = Competition.all
    end
    render :index
  end

  def new
    @competition = Competition.new
    render :new
  end

  def create 
    @competition = Competition.create(competition_params)

    if @competition.save
      redirect_to competition_path(@competition)
    else
      render :new
    end
  end

  def show
    @competition = Competition.find(params[:id])
    render :show
  end

  def edit
    @competition = Competition.find(params[:id])
  end

  def update

    @competition = Competition.find(params[:id])
    @competition.update_attributes(competition_params)
    redirect_to competition_path(@competition)
  end

  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy!
    redirect_to competitions_path
  end


  private

  def competition_params
    params.require(:competition).permit(:title, :description, :website, :image_url, :early_bird, :deadline, :notification, :all_tags)
  end

end
