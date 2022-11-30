class BodyPartsController < ApplicationController
  def new
    @body_part = BodyPart.new
  end

  def create
    @body_part = BodyPart.new(body_params)
  end

  private

  def body_params
    params.require(:body_part).permit(:name)
  end
end
