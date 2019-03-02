class UsersController < ApplicationController
  def show
    @meters = current_user.meters
  end
end
