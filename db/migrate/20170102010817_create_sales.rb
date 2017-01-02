class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :buyer_email, required: true, null: false
      t.string :seller_email, required: true, null: false
      t.string :guid, required: true
      t.integer :book_id, required: true, null: false

      t.timestamps
    end
  end
end
