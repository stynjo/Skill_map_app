class KitchensController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @kitchen_skill_map = @user.kitchen
  end
  
  
  def update
    @users_kitchen = Kitchen.find(params[:id])
    @user_id = @users_kitchen.user_id
    @user = User.find(@user_id)
    @kitchen_skill_map_level = update_kitchen_skillmap_params
    @users_kitchen.update_attributes(update_kitchen_skillmap_params)
    redirect_to @user
  end
  
  def update_kitchen_skillmap_params
    params.require(:kitchen).permit(:conro, :oven, :flier, :salad, :drink)
  end
  
end
