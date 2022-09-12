class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :password_digest
      t.string :email
      t.integer :gotHowFar
      t.integer :paidHowFar
    end
  end
end
