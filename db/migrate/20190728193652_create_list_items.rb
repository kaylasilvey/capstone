class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :user_id
      t.integer :QTY

      t.timestamps
    end
  end
end
