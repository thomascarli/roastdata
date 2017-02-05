# == Schema Information
#
# Table name: roasts
#
#  id                  :integer          not null, primary key
#  roast_method        :string
#  date_of_roast       :datetime
#  bean_species        :string
#  roast_duration      :integer
#  time_of_roast       :datetime
#  roast_profile       :string
#  avg_temp_roast      :integer
#  raw_weight          :integer
#  storage             :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  bean_country_origin :string
#  bean_varietal_name  :string
#

class Roast < ApplicationRecord
	has_many :brews

	validates	:roast_method,				presence: true
	validates	:date_of_roast,				presence: true
	validates	:bean_species,				presence: true
	validates	:roast_duration,			presence: true
	validates	:time_of_roast,				presence: true
	validates	:roast_profile,				presence: true
	validates	:avg_temp_roast,			presence: true
	validates	:raw_weight,					presence: true
	validates	:bean_country_origin,	presence: true
	validates	:bean_varietal_name, 	presence: true

end
