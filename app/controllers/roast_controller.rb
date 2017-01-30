class RoastController < ApplicationController
	before_action :authenticate_user!
	#before_action :set_roast, only: [:show,:create]

  def index
    @roasts = Roast.all
  end

  def new
  	@roast = Roast.new
  	# binding.pry
  end

  def create
  	binding.pry
  	# params = params[:roast]
  	@roast = Roast.new(params[:roast])
  	@roast.update!(user_id: current_user.id)
  	#@roast = Roast.find()
  	# roast = Roast.new(roast_method: params[:roast_method],
			# date_of_roast: params[:date_of_roast],
			# bean_species: params[:bean_species],
			# roast_time: params[:roast_time],
			# roast_profile: params[:roast_profile],
			# avg_temp_roast: params[:avg_temp_roast],
			# raw_weight: params[:raw_weight],
			# storage: params[:storage] )

  	if @roast.save
			redirect_to @roast, notice: "Your roast was created successfully"
		else

			render :new
		end
  end

  def show
  	@roast = Roast.find(params[:id])
  end

  def update

  private
  	def roast_params
  		params.require(:roast).permit(:date_of_roast,
															:bean_species,
															:roast_time,
															:roast_profile,
															:avg_temp_roast,
															:raw_weight,
															:storage )
  	end

  	def set_roast
  		@roast = Roast.find(params[:id])
  	end
  end


end
