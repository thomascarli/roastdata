class RoastController < ApplicationController
	before_action :authenticate_user!
	#before_action :set_roast, only: [:show,:create]

  before_filter :authenticate_user!

  def index
    @roasts = Roast.all
  end

  def new
  	#@roast = Roast.new
  end

  def create
  	@roast = Roast.new
  	@roast.update!(
			roast_method: params[:roast_method],
			date_of_roast: params[:date_of_roast],
			bean_species: params[:bean_species],
			roast_time: params[:roast_time],
			time_of_roast: params[:time_of_roast],
			roast_profile: params[:roast_profile],
			avg_temp_roast: params[:avg_temp_roast],
			raw_weight: params[:raw_weight],
			storage: params[:storage])

  	if @roast.save
			redirect_to @roast, notice: "Your roast was created successfully"
		else
			redirect_to new_roast_path
		end
  end

  def show
  	@roast = Roast.find(params[:id])
  end

  # private
  # 	def roast_params
  # 		params.require(:roast).permit(:date_of_roast,
		# 													:bean_species,
		# 													:roast_time,
		# 													:roast_profile,
		# 													:avg_temp_roast,
		# 													:raw_weight,
		# 													:storage )
  # 	end

  # 	def set_roast
  # 		@roast = Roast.find(params[:id])
  # 	end
  # end


end
