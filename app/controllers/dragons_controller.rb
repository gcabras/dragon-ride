class DragonsController < ApplicationController
  before_action :set_dragon, only: %i[show edit update destroy]

  def index
    @dragons = policy_scope(Dragon)
    @markers = @dragons.geocoded.map do |dragon|
      {
        lat: dragon.latitude,
        lng: dragon.longitude
      }
    end
  end

  def show
    # set_dragon
    authorize @dragon
  end

  def new
    @dragon = Dragon.new
    @user = current_user
    authorize @dragon
  end

  def create
    @dragon = Dragon.new(dragon_params)
    @user = current_user
    @dragon.user = @user
    authorize @dragon
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @dragon
    # set_dragon
  end

  def update
    @dragon.update(dragon_params)
    authorize @dragon
    if @dragon.save
      redirect_to dragon_path(@dragon)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @dragon
    @dragon.destroy
    redirect_to dragons_path
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :address, photos: [])
  end
end
