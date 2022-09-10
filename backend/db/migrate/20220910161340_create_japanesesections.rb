class CreateJapanesesections < ActiveRecord::Migration[7.0]
  def change
    create_table :japanesesections do |t|
      t.integer :lesson_id
      t.text :lessontitle
      t.text :shortdescription
      t.text :screenshot
      t.timestamps
    end
  end
end
