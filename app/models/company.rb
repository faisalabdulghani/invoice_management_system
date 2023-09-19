class Company < ApplicationRecord
    has_many :invoices
    has_many :items, through: :invoices
    has_many :discounts, as: :discountable

    validates :company_name, :phone_no, uniqueness: true, presence: true
end
