class CreateVocabwords < ActiveRecord::Migration[7.0]
  def change
    create_table :vocabwords do |t|
      t.string :kanji
      t.string :nokanji
      t.string :english
      t.integer :japanesesection_id
      t.timestamps
    end
  end
end
