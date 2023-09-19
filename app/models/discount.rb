class Discount < ApplicationRecord
    belongs_to :discountable, polymorphic: true

    validates :percentage,  presence: true
    validates :discount_type, presence: true, inclusion: { in: ['invoice', 'company'] }
end
