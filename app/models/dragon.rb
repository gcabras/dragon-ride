class Dragon < ApplicationRecord
  belongs_to :user
  validates :name, :address, presence: true
end
