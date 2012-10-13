class UsersController < ApplicationController
	before_filter :authenticate_user!

def edit
	@user = User.find(params[:id])
	@games = Game.all
end


def update
	@user = User.find(params[:id])
	@currentpicks = @user.game_ids
	@idarray = "user[game_ids][]"

	@user.update_attribute('game_ids', params[:user][:game_ids] + @currentpicks)
	#if @user.update_attribute(:game_ids => params[:user][:game_ids] + @currentpicks)
		#redirect_to @user, notice: "Yay!"
	#else
		#redirect_to edit_user_path(@user), notice: "Nooo!"
	#end

end

def show
end

def clear
	@currentgames = current_user.games
	current_user.update_attribute('games', @currentgames.where('week != ?', params[:week_id]))
	redirect_to edit_user_path(current_user)
end


end