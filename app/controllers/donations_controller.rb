class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new
    @donation.amount_bracket = don_params[:amount_bracket].to_i
    if @donation.save
      # ça marche > rediriger sur question suivante
    else
      flash.now[:alert] = @donation.errors[:amount_bracket][1]
      render :new
    end
  end

  private

  def don_params
    params.require(:donation).permit(:amount_bracket)
  end
end
