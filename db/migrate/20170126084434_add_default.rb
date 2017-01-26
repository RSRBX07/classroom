class AddDefault < ActiveRecord::Migration[5.0]
  def change
    change_table :students do |table|
      table.remove :picture, :string
      table.column :picture, :string, :default => "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png"
    end
  end
end
