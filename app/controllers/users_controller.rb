class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :dashboard
  def dashboard
    @user = current_user
    
  end

  def photo

  end
end
