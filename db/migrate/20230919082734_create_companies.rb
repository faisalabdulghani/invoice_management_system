class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.text :address
      t.string :phone_no
      t.string :email
      

      t.timestamps
    end
  end
end
