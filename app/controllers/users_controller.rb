class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @kitchen_skill_map = @user.kitchen
    @hall_skill_map = @user.hall
    @user.create_kitchen(conro: 0, oven: 0, flier: 0, salad: 0, drink: 0) if @user.kitchen.nil?
    kitchen_skill_array = %w[conro oven flier drink salad]
      gon.kitchen_skill_values = kitchen_skill_array.map do |label|
        @user.kitchen[label]
      end 
      
    @user.create_hall(hall: 0, server: 0, entrance: 0, washer: 0, reader: 0) if @user.hall.nil?
    hall_skill_array = %w[hall server entrance washer reader]
      gon.hall_skill_values = hall_skill_array.map do |label|
        @user.hall[label]
      end
      
    gon.kitchen_skill_labels = %w[コンロ オーブン フライヤー ドリンク サラダ場]
    gon.hall_skill_labels = %w[ホール サーバー エントランス ウォッシャー リーダー]
  end
  
  def index
    @users = User.all
  end
  
  
end
