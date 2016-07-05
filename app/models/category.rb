class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :post

  validates :name, presence: true


  private
  
  def should_generate_new_friendly_id?
      slug.blank? || name_changed?
  end
end
