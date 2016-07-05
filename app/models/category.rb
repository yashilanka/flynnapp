class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :post

  validates :name, presence: true
end
