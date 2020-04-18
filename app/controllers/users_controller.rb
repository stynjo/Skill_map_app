class UsersController < ApplicationController
  
  def show
   @user = User.find(params[:id])
    if @user.skill_map.nil?
     @skill_map = @user.create_skill_map(conro: 0, oven: 0, flier: 0, salad: 0, drink: 0)
    end
  end
  
  def index
    @users = User.all
  end
end
