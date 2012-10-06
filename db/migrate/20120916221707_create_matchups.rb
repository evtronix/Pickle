class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.integer :week
      t.string :favorite
      t.string :underdog
      t.integer :line

      t.timestamps
    end
  end
end
