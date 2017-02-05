class BrewsController < ApplicationController

  def index
    @brews = roast.brews
  end

  def show
    roast
    @brew = Brew.find(params[:id]).decorate
  end

  def new
    @roast = roast
    @brew = Brew.new
  end

  def edit
    @roast = roast
    @brew = Brew.find(params[:id])
  end


  def create
  	@brew = Brew.new(brew_params)
  	@brew.user_id = current_user.id
    @brew.roast_id = roast.id
  	if @brew.save
  		redirect_to [roast, @brew], notice: "Your review was successfully saved!"
  	else
  		render :new
  	end
  end

  def update
    @brew = Brew.find(params[:id])
    @roast = roast
    if @brew.update(brew_params)
      redirect_to [roast, @brew], notice: "Your review was successfully saved!"
    else
      render :edit
    end
  end

  private

  def roast
    @roast ||= Roast.find(params[:roast_id]).decorate
  end

  def brew_params
    params.require(:brew).permit(
      :brew_method,
      :date_of_brew,
      :qty_of_beans,
      :time_of_brew,
      :texture,
      :acidity,
      :bitterness,
      :complexity,
      :comments,
      :overall
      )
  end

end
