class AddDefault < ActiveRecord::Migration[5.0]
  def change
    change_table :students do |table|
      table.remove :picture
    end
    add_column :students, :picture, :string, :default => "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png"
  end
end
