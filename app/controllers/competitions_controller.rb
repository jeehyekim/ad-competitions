class CompetitionsController < ApplicationController

  def index
    @competitions = Competition.all
    render('index')
  end

  def new

  end

end
