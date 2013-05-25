class CreateTrophies < ActiveRecord::Migration
  def change
    create_table :trophies do |t|
      t.string :title
      t.text :description
      t.references :game
      t.references :player
      t.integer :points

      t.timestamps
    end
    add_index :trophies, :game_id
    add_index :trophies, :player_id
  end
end
