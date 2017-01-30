class RoastController < ApplicationController

  def index
    @roasts = Roast.all
  end

  def create
  end

end
