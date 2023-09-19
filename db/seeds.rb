# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb


Company.create!(
    company_name: 'Company A',
    address: '123 Main St',
    phone_no: '555-1234',
    email: 'companyA@example.com'
  )
  
  Company.create!(
    company_name: 'Company B',
    address: '456 Elm St',
    phone_no: '555-5678',
    email: 'companyB@example.com'
  )
  
  # Create Discounts
  Discount.create!(
    percentage: 10.0,
    discount_type: 'invoice',
    discountable: Invoice.find(1) 
  )
  
  Discount.create!(
    percentage: 5.0,
    discount_type: 'company',
    discountable: Company.find(2) 
  )
  
  # Create Invoices
  Invoice.create!(
    invoice_number: 1001,
    invoice_date: Date.new(2023, 9, 10),
    total_amount: 500.0,
    company: Company.find(1) 
  )
  
  Invoice.create!(
    invoice_number: 1002,
    invoice_date: Date.new(2023, 9, 15),
    total_amount: 750.0,
    company: Company.find(2) 
  )
  
  # Create Items
  Item.create!(
    item_name: 'Item 1',
    item_price: 20.0,
    item_quantity: 5,
    invoice: Invoice.find(1) # Associated with Invoice 1001
  )
  
  Item.create!(
    item_name: 'Item 2',
    item_price: 15.0,
    item_quantity: 3,
    invoice: Invoice.find(2) # Associated with Invoice 1002
  )
  
