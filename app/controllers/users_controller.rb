class UsersController < ApplicationController

  def show
    @user = current_user
    @prototype = current_user.prototypes
  end
end
