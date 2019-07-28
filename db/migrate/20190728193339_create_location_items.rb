class CreateLocationItems < ActiveRecord::Migration[6.0]
  def change
    create_table :location_items do |t|
      t.integer :location_id
      t.integer :item_id
      t.integer :user_id
      t.integer :QTY

      t.timestamps
    end
  end
end
