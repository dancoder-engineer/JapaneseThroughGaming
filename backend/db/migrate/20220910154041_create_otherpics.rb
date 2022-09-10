class CreateOtherpics < ActiveRecord::Migration[7.0]
  def change
    create_table :otherpics do |t|
      t.string :pic
      t.text :caption
      t.integer :cover_id
    end
  end
end
