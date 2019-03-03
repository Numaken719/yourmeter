class MetersController < ApplicationController
  
  before_action :move_to_index, except: [:index,:show]

  def index
    @meters = Meter.all.order("created_at DESC")
  end
  
  def new
  end
  
  def create
    Meter.create(title: meter_params[:name], text: meter_params[:text], user_id: current_user.id)
  end
  
  def show
    @meter = metes.find(params[:id])
  end
  
  private
  def meter_params
    params.permit(:title, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end