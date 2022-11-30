class Dragon < ApplicationRecord
  belongs_to :user
  validates :name, :address, presence: true
  has_many :claims, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
end
