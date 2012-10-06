class MatchupsController < ApplicationController

def index
	@matchups = Matchup.all
	@pick = Pick.new
end

end
