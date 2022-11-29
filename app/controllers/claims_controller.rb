class ClaimsController < ApplicationController
  before_action :set_dragon, only: %i[new create]

  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(claim_params)
    @claim.dragon = @dragon
    @claim.user = current_user
    if @claim.save
      redirect_to dragon_path(@dragon)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_dragon
    @dragon = Dragon.find(params[:dragon_id])
  end

  def claim_params
    params.require(:claim).permit(:start_date)
  end
end
