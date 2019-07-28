class CreateItemExpirations < ActiveRecord::Migration[6.0]
  def change
    create_table :item_expirations do |t|
      t.integer :expiration_id
      t.integer :item_id

      t.timestamps
    end
  end
end
