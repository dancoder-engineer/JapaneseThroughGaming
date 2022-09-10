class CreateCovers < ActiveRecord::Migration[7.0]
  def change
    create_table :covers do |t|
      t.string :front
      t.string :back
      t.string :titlescreen
      t.integer :gamesection_id
    end
  end
end
