# == Schema Information
#
# Table name: brews
#
#  id           :integer          not null, primary key
#  roast_id     :integer
#  brew_method  :string
#  time_of_brew :datetime
#  qty_of_beans :integer
#  bitterness   :integer
#  complexity   :integer
#  acidity      :integer
#  overall      :integer
#  texture      :string
#  comments     :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  date_of_brew :datetime
#

require 'test_helper'

class BrewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
