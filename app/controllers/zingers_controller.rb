class ZingersController < ApplicationController
  def new
    @zinger = Zinger.new
  end

  def create
    @zinger = Zinger.create(zinger_params)
    redirect_to zingers_path
  end


  private
  def post_params
    params.require(:zinger).permit(:original, :reversed)
  end
end
