class ChangeResultFromGames < ActiveRecord::Migration
  def up
  	change_column :games, :result, :string
  end

  def down
  	change_column :games, :result, :boolean
  end
end
