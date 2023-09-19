class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.date :invoice_date
      t.integer :total_amount
      t.references :company, foreign_key: true 

      t.timestamps
    end
  end
end
