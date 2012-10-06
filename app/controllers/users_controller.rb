class UsersController < ApplicationController

def edit
	@user = User.find(params[:id])
	@games = Game.all
end


def update
	@user = User.find(params[:id])

	if @user.update_attributes(params[:user])
		redirect_to @user, notice: "Yay!"
	else
		redirect_to edit_user_path(@user), notice: "Nooo!"
	end

end

def show
end


end