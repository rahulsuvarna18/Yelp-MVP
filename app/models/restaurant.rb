class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :phone_number, uniqueness: true, presence: true
  validates :address, :category, presence: true
  validates :category, inclusion: { in: ['Chinese', 'Japanese', 'Indian', 'Italian', 'Indonesian'] }
end
