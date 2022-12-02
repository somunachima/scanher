class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :about ]

  def home
    @exam = Exam.new
    @body_part_services = {}
    @body_parts = Exam.all.pluck(:body_part).uniq
    # p @body_parts
    @body_parts.each do |bp|
      @body_part_services[bp] = Exam.where(body_part: bp).pluck(:service)
      # p @body_part_services
    end
    # !USE MAPBOX STYLE OF FINDING MARKERS TO FIND THE SERVICE TYPE PER SELECTED BODY PART
  end
end
