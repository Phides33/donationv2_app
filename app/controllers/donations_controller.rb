class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(don_params)
    @donation.save
  end

  private

  def don_params
    params.require(:donation).permit(:amount_bracket)
  end
end
