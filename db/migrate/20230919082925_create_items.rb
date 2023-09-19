class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :item_price
      t.integer :item_quantity
      t.references :invoice, foreign_key: true 
      
      t.timestamps
    end
  end
end
