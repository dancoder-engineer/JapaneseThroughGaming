class CreateExamples < ActiveRecord::Migration[7.0]
  def change
    create_table :examples do |t|
      t.string :title
      t.string :box
      t.text :kanji
      t.text :nokanji
      t.text :english
      t.integer :japanesesection_id
      t.timestamps
    end
  end
end
