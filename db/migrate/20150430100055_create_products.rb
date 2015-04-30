class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null:false
      t.integer :in_stock_qty, :default => 0, null: false
      t.float :price
      t.text :description
      t.string :img_url

      t.timestamps null: false
    end
  end
end
