class Brew < ActiveRecord::Base

  belongs_to :roast
  belongs_to :user

end
