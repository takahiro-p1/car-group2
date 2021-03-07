class AddImageToCarlist < ActiveRecord::Migration[6.1]
  def change
    add_column :carlists, :image, :string
  end
end
