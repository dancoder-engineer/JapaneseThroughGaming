class CreateScreenshots < ActiveRecord::Migration[7.0]
  def change
    create_table :screenshots do |t|
      t.string :url
      t.text :caption
      t.integer :gamesection_id
    end
  end
end
