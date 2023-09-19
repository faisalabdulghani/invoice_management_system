class Item < ApplicationRecord
    belongs_to :invoice

    validates :item_name, :item_quantity, presence: true
    validates :item_price, presence: true, numericality: { greater_than_or_equal_to: 0 }

    
    #This callback is to calculate the total_amount in invoice item
    after_create :update_invoice_total_price

  def update_invoice_total_price
    invoice = self.invoice
    total = invoice.items.sum { |item| item.item_price * item.item_quantity }
    invoice.update(total_amount: total)
  end

end
