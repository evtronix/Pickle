class Game < ActiveRecord::Base
  attr_accessible :line, :result, :team, :week, :game_id, :game_ids

  has_many :picks
  has_many :users, through: :picks
end
