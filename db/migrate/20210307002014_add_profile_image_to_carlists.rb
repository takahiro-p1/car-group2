class AddProfileImageToCarlists < ActiveRecord::Migration[6.1]
  def change
    add_column :carlists, :profile_image, :string
  end
end
