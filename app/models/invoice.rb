class Invoice < ApplicationRecord
    belongs_to :company
    has_many :items
    has_many :discounts, as: :discountable

    validates :invoice_number, presence: true, uniqueness: true

    def calculate_total_price
        total = items.sum{|item| item.item_price * item.item_quantity}
        update(total_amount: total)
    end

    after_create :calculate_total_price

    
end
