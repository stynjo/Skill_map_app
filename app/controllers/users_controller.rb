class UsersController < ApplicationController
  
  def show
   @user = User.find(params[:id])
    if @user.kitchen.nil?
     @kitchen_skill_map = @user.create_kitchen(conro: 0, oven: 0, flier: 0, salad: 0, drink: 0)
    else
     @kitchen_skill_map = @user.kitchen
    end
    @json = @kitchen_skill_map.to_json
  end
  
  def index
    @users = User.all
  end
  
  
end
