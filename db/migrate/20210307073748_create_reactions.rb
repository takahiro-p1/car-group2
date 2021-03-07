class CreateReactions < ActiveRecord::Migration[6.1]
  def change
    create_table :reactions do |t|

      t.references :user, null: false, foreign_key: { to_table: :users }
      t.references :carlist, null: false, foreign_key: { to_table: :carlists }
      t.integer :status, null: false

      t.timestamps
    end
  end
end
