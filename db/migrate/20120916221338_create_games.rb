class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :week
      t.string :team
      t.integer :line
      t.boolean :result

      t.timestamps
    end
  end
end
