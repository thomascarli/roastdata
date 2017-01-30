class RoastController < ApplicationController

  before_filter :authenticate_user!

  def index
    @roasts = Roast.all
  end

  def create
  end

end
