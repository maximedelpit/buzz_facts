class BuzzFact < ApplicationRecord
  has_many :likes, dependent: :destroy
  validates :title, :content, presence: true
  # attr_accessors => :likes
end
