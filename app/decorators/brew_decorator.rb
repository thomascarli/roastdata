class BrewDecorator < Draper::Decorator
  delegate_all

  def formatted_brew_method
    object.brew_method ? object.brew_method : "No Brew Method Specified."
  end

  def formatted_time_of_brew
    object.time_of_brew ? object.time_of_brew.strftime("%I:%M:%S %P") : "No Time of Brew Specified."
  end

  def formatted_date_of_brew
    object.date_of_brew ? object.date_of_brew.strftime("%D") : "No Date of Brew Specified."
  end

  def formatted_qty_of_beans
    object.qty_of_beans ? object.qty_of_beans.to_s + "g" : "No Qty of Beans Specified."
  end

  def formatted_brew_overall
    object.overall ? object.overall : "No Overall Specified."
  end

  def formatted_brew_texture
    object.texture ? object.texture : "No Texture Specified."
  end

  def formatted_brew_acidity
    object.acidity ? object.acidity : "No Acidity Specified."
  end

  def formatted_brew_bitterness
    object.bitterness ? object.bitterness : "No Bitterness Specified."
  end

  def formatted_brew_complexity
    object.complexity ? object.complexity : "No Complexity Specified."
  end

  def formatted_brew_comments
    object.comments ? object.comments : "No Comments Specified."
  end

end
