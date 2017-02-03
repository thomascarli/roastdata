# == Schema Information
#
# Table name: roasts
#
#  id                  :integer          not null, primary key
#  roast_method        :string
#  date_of_roast       :datetime
#  bean_species        :string
#  roast_time          :integer
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

require 'test_helper'

class RoastTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
