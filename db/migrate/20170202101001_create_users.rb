class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :admin_id
      t.string :student_id

      t.timestamps
    end

    change_table :students do |t|
      t.integer :user_id
    end
  end
end
