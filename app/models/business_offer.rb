class BusinessOffer < ApplicationRecord
  belongs_to :business, dependent: :destroy
  has_many :order_items
  has_many :orders, through: :order_items
  validates :offer_amount, uniqueness: true
  validates :offer_amount, :discount, presence: true
end
