class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user.create_kitchen(conro: 0, oven: 0, flier: 0, salad: 0, drink: 0) if @user.kitchen.nil?

    kitchen_skill_array = %w[conro oven flier drink salad]
    gon.kitchen_skill_values = kitchen_skill_array.map do |label|
      @user.kitchen[label]
    end
    gon.kitchen_skill_labels = %w[コンロ オーブン フライヤー ドリンク サラダ場]
  end
  
  def index
    @users = User.all
  end
  
  
end
