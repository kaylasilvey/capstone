class CreateExpirations < ActiveRecord::Migration[6.0]
  def change
    create_table :expirations do |t|
      t.string :date

      t.timestamps
    end
  end
end
