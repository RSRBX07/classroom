class AddPictureToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :src_img, :string
  end
end
