class UsersController < ApplicationController

  def index
    @brews = Brew.where(user_id: current_user.id).decorate
  end

end
