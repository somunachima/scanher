class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :about ]

  def home
  end
end
