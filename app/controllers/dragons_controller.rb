class DragonsController < ApplicationController
  before_action :set_dragon, only: :show

  def index
    @dragons = Dragon.all
  end

  def show
    # set_dragon
  end

  def new
    @dragon = Dragon.new
    @user = current_user
  end

  def create
    @dragon = Dragon.new(dragon_params)
    @user = current_user
    @dragon.user = @user
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :address)
  end
end
