class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :ques
      t.text :choice1
      t.text :choice2
      t.text :choice3
      t.text :choice4
      t.text :correctChoice
      t.integer :quiz_id
      t.timestamps
    end
  end
end
