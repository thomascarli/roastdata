class RoastDecorator < Draper::Decorator
  delegate_all
  decorates_association :brews

  def roast_date
    object.date_of_roast ? object.date_of_roast.strftime("%D") : "No Roast Date Specified."
  end

  def bean_species
    object.bean_species ? object.bean_species : "No Bean Species Specified."
  end

  def formatted_roast_time
    mins, secs = object.roast_time.divmod(60)
    mins_time = mins.zero? ? '' : mins.to_s + ' minute'.pluralize(mins)
    secs_time = secs.zero? ? '' : " and " + secs.to_s + ' second'.pluralize(secs)
    mins_time + secs_time
  end

  def formattted_time_of_roast
    object.time_of_roast ? object.time_of_roast.strftime("%I:%M:%S %P") : "No Time of Roast Specified."
  end

  def formatted_roast_profile
    object.roast_profile ? object.roast_profile : "No Roast Profile Specified."
  end

  def formatted_raw_weight
    object.raw_weight ? object.raw_weight.to_s + 'g' : "No Raw Weigh Specified."
  end

  def formatted_storage
    object.storage ? object.storage : "No Storage Specified."
  end

  def formatted_avg_temp_roast
    object.avg_temp_roast ? object.avg_temp_roast : "No Avg. Temp Roast Specified."
  end

end
