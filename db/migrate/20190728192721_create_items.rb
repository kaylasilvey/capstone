class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :UOM
      t.string :UPC
      t.integer :user_id

      t.timestamps
    end
  end
end
