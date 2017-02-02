class Roast < ApplicationRecord

  has_many :brews

  def formatted_roast_time
    mins, secs = roast_time.divmod(60)
    mins_time = mins.zero? ? '' : mins.to_s + ' minute'.pluralize(mins)
    secs_time = secs.zero? ? '' : " and " + secs.to_s + ' second'.pluralize(secs)
    mins_time + secs_time
  end
end
