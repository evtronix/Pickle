class Pick < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :game_ids

  belongs_to :user
  belongs_to :game

end
