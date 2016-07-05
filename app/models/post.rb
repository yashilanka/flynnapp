class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :categories

  validates :title, :content,  presence: true
end
