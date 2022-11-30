class ServicePartsController < ApplicationController

  def new
    @service = Service.find(params[:service_id])
    @body_part = BodyPart.find(params[:body_part_id])
    @service_part = ServicePart.new
  end

  def create
    @service = Service.find(params[:service_id])
    @body_part = BodyPart.find(params[:body_part_id])
    @service_part = ServicePart.new(service_part_params)
  end

  private

  def service_part_params
    params.require(:service_part).permit(:service_id, :body_part_id)
  end
end
