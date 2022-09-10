class CreateParagraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :paragraphs do |t|
      t.text :text
      t.integer :gamesection_id
    end
  end
end
