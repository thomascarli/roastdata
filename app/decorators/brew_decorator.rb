class BrewDecorator < Draper::Decorator
  delegate_all

  def formatted_brew_method
    object.brew_method ? object.brew_method : "No Brew Method Specified."
  end

  def formatted_time_of_brew
    object.time_of_brew ? object.time_of_brew.strftime("%I:%M:%S %P") : "No Time of Brew Specified."
  end

  def formatted_qty_of_beans
    object.qty_of_beans ? object.qty_of_beans.to_s + "g" : "No Qty of Beans Specified."
  end

  def formatted_overall
    object.overall ? object.overall : "No Overall Specified."
  end

end
