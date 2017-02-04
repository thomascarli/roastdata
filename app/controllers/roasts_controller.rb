class RoastsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@roasts = Roast.all.decorate
  end

  def new
  	@roast = Roast.new
  end

  def create
  	@roast = Roast.new(roast_params)
  	@roast.user_id = current_user.id
  	if @roast.save
  		redirect_to @roast, notice: "Your Roast was successfully saved!"
  	else
  		render :new
  	end
  end

  def show
		@raw_roast = Roast.find(params[:id])
  	@roast = @raw_roast.decorate
  end

  private

	def roast_params
		params.require(:roast).permit(
			:roast_method,
			:date_of_roast,
			:bean_species,
			:bean_country_origin,
			:bean_varietal_name,
			:roast_duration,
			:time_of_roast,
			:roast_profile,
			:avg_temp_roast,
			:raw_weight,
			:storage
			)
	end
end
