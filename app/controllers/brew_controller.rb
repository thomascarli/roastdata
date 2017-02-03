class BrewController < ApplicationController

  def index
    @brews = roast.brews
  end

  def show
    roast
    @brew = Brew.find(params[:id]).decorate
  end

  def create
  end

  private

  def roast
    @roast ||= Roast.find(params[:roast_id]).decorate
  end

end
