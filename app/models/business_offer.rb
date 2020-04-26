class BusinessOffer < ApplicationRecord
  attr_accessor :biz_offer_id
  belongs_to :business, dependent: :destroy  # .business
  has_many :order_items, dependent: :destroy # .order_items
  has_many :orders, through: :order_items    # .orders
  validates :offer_amount, uniqueness: { scope: :business, message: "The amount must be unique" }
  validates :offer_amount, :discount, presence: true

  monetize :price_cents
end
