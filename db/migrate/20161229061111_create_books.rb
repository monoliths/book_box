class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name, null: false, default: "", required: true
      t.string :author, null: false, default: "", required: true
      t.text :description
      t.integer :price, null: false, required: true
      t.boolean :availability, null:false, default: true

      t.timestamps
    end
  end
end
