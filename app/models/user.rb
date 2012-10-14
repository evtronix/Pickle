class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :id, :game_id, :game_ids
  # attr_accessible :title, :body

  has_many :picks
  has_many :games, through: :picks

  def correct_games
    self.games.where(result: "W").count 
  end

  def total_games
    self.games.where('result != ?', "P").count 
  end
end
