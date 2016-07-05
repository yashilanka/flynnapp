class Post < ApplicationRecord
  has_many :categories

  validates :title, :content,  presence: true
end
