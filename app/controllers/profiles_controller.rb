class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(prof_params)
    if @profile.save
      # ça marche > rediriger sur question suivante
    else
      flash.now[:alert] = @profile.errors.full_messages
      render :new
    end
  end

  private

  def prof_params
    params.require(:profile).permit(:full_name, :email, :mobile)
  end
end
