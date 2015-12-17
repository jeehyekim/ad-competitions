class CompetitionsController < ApplicationController

  def index
    if params[:tag]
      @competitions = Competition.tagged_with(params[:tag])
    else
      @competitions = Competition.all
    end
  end

  def new
    @competition = Competition.new
    render :new
  end

  def create 
    @competition = Competition.new(competition_params)

    if @competition.save
      @competition.deadlines.create({kind:'early_bird', date: @competition.early_bird})
      @competition.deadlines.create({kind:'deadline', date: @competition.deadline})
      # @competition.deadlines.create({kind:'notification', date: @competition.notifiction})
      redirect_to competition_path(@competition)
    else
      render :new
    end
  end

  def show
    @competition = Competition.find(params[:id])
    # @user = User.find(current_user)
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

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
