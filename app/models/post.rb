class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :categories

  validates :title, :content,  presence: true


  private
  
  def should_generate_new_friendly_id?
      slug.blank? || title_changed?
  end


end
