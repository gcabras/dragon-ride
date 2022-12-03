class Dragon < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_many :claims, dependent: :destroy
  has_many_attached :photos
  belongs_to :location
end
