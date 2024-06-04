class Product < ApplicationRecord
  belongs_to :user
  has_many :sales

  validates :name, :price, :description, presence: true
end
