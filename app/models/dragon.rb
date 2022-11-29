class Dragon < ApplicationRecord
  belongs_to :user
  validates :name, :address, presence: true
  has_many :claims, dependent: :destroy
end
