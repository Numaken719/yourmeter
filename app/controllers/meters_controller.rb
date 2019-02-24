class MetersController < ApplicationController
  
  

  def index
    @meters = Meter.all.order("created_at DESC")
  end
  
  def new
  end
  
  def create
    Meter.create(meter_params)
  end
  
  private
  def meter_params
    params.permit(:title, :text)
  end
  
end