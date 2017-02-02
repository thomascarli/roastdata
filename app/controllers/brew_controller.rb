class BrewController < ApplicationController

  def index
    @brews = roast.brews
  end

  def show
    roast
    @brew = Brew.find(params[:id])
  end

  def create
  end

  private

  def roast
    @roast ||= Roast.find(params[:roast_id])
  end

end
