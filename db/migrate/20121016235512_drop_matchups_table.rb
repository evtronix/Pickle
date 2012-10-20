class DropMatchupsTable < ActiveRecord::Migration
  def up
  	drop_table :matchups 
  end

  def down
  	create_table :matchups do |t|
  		t.integer :week
  		t.string :favorite
  		t.string :underdog
  		t.integer :line
  		t.timestamps
  	end
  end
end
