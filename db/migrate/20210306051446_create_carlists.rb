class CreateCarlists < ActiveRecord::Migration[6.1]
  def change
    create_table :carlists do |t|
      t.string :name
      t.text :text
      t.integer :period

      t.timestamps
    end
  end
end
