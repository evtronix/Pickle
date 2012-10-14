class AddScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :score, :decimal, :precision => 10, :scale => 2
  end
end
