class FixLinesFromGames < ActiveRecord::Migration
  def up
  	change_column :games, :line, :decimal, :precision => 10, :scale => 1
  end

  def down
  	change_column :games, :line, :integer
  end
end
