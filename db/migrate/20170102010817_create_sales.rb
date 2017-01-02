class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :guid, required: true, null: false
      t.integer :book_id, required: true, null: false
      t.references :buyer, null: false, required: true
      t.references :seller, null: false, required: true
      t.timestamps
    end
  end
end
