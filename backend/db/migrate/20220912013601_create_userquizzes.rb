class CreateUserquizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :userquizzes do |t|
      t.integer :quizNo
      t.integer :mcScore
      t.integer :user_id
      t.timestamps
    end
  end
end
