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

class Brew < ApplicationRecord

  belongs_to :roast
  belongs_to :user

  validates	:brew_method,				presence: true
  validates	:date_of_brew,			presence: true
  validates	:overall, 	        presence: true

end
