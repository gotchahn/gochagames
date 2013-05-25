class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :full_name
      t.datetime :birth_at

      t.timestamps
    end
  end
end
