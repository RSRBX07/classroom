class AddRemaindaysToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :remain_days, :integer, default: 0
  end
end
