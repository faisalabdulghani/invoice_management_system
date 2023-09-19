class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.float :percentage
      t.string :discount_type
      t.references :discountable, polymorphic: true, null:false

      t.timestamps
    end
  end
end
