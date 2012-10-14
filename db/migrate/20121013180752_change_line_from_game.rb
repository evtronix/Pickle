class ChangeLineFromGame < ActiveRecord::Migration
  def up
  	change_column :games, :line, :decimal, :scale => 1
  end

  def down
  	change_column :games, :line, :integer
  end
end
