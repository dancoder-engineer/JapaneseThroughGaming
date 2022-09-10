class CreateGamesections < ActiveRecord::Migration[7.0]
  def change
    create_table :gamesections do |t|
      t.integer :lesson_id

      t.timestamps
    end
  end
end

