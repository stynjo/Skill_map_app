class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user.create_kitchen(conro: 0, oven: 0, flier: 0, salad: 0, drink: 0) if @user.kitchen.nil?

    gon.kitchen_skill_labels = %w[conro oven flier drink salad]
    gon.kitchen_skill_values = gon.kitchen_skill_labels.map do |label|
      @user.kitchen[label]
    end
  end
  
  def index
    @users = User.all
  end
  
  
end
