class PicksController < ApplicationController

	def new
		@games = Game.all
		@picks = current_user.picks.new
	end

	def create
		@picks = current_user.picks.new(params[:picks][:game_id])
		#@picks.game_id = params[:picks][:picks][:game_id]
		
		if @picks.save
			redirect_to login_path, notice: "Picks submitted!"
		else
			redirect_to root_path, notice: "Failed!"
		end
	end


end