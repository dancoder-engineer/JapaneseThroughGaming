class CreateJapanesecopyparagraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :japanesecopyparagraphs do |t|
      t.text :text
      t.integer :japanesesection_id
      t.timestamps
    end
  end
end
