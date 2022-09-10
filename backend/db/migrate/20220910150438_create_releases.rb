class CreateReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :releases do |t|
      t.string :system
      t.string :date
      t.integer :gamesection_id
    end
  end
end
