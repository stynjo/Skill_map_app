class HallsController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @hall_skill_map = @user.hall
  end
  
  
  def update
    @users_hall = Hall.find(params[:id])
    @user_id = @users_hall.user_id
    @user = User.find(@user_id)
    @hall_skill_map_level = update_hall_skillmap_params
    @users_hall.update_attributes(update_hall_skillmap_params)
    redirect_to @user
  end
  
  def change_map
    @user = User.find(params[:id])
    @hall_skill_map = @user.hall
    @user.create_hall(hall: 0, server: 0, entrance: 0, washer: 0, reader: 0) if @user.hall.nil?
    hall_skill_array = %w[hall server entrance washer reader]
      gon.hall_skill_values = hall_skill_array.map do |label|
        @user.hall[label]
      end
    gon.hall_skill_labels = %w[ホール サーバー エントランス ウォッシャー リーダー]
  end
  
  def update_hall_skillmap_params
    params.require(:hall).permit(:hall, :server, :entrance, :washer, :reader)
  end
end
