class KitchensController < ApplicationController
  def edit
    @user = User.find(params[:id])
    binding.pry
  end
end
