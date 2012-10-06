class GamesController < ApplicationController

	def index
		@games = Game.all
		@picks = current_user.games.new
	end

	def new
		@games = Game.all
		@picks = current_user.picks.new
	end

	def create
		@picks = current_user.picks.new
		@picks.game_ids = params[:picks][:game_ids]
		
		if @picks.save
			redirect_to login_path, notice: "Picks submitted!"
		else
			redirect_to root_path, notice: "Failed!"
		end
	end
end
