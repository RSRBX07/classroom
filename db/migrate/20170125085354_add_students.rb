class AddStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |table|
      table.column :name, :string
      table.column :picture, :string
      table.timestamps
    end
  end
end
