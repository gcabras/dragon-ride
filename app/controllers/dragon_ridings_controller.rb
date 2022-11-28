class DragonRidingsController < ApplicationController
  before_action :set_dragon, only: %i[new create edit update]

  def new
    @dragon_riding = DragonRiding.new
  end

  def create
    @dragon_riding = DragonRiding.new(dragon_riding_params)
    @dragon_riding.user = current_user
    @dragon_riding.dragon = @dragon
    if @dragon_riding.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dragon_riding_params
    params.require(:dragon_riding).permit(:start_date, :end_date)
  end

  def set_dragon
    @dragon = Dragon.find(params[:dragon_id])
  end
end
