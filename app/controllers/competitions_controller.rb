class CompetitionsController < ApplicationController

  def index
    @competitions = Competition.all
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


  private

  def competition_params
    params.require(:competition).permit(:title, :description, :website, :image_url, :early_bird, :deadline, :notification)
  end

end
