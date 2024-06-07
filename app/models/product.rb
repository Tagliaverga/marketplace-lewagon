class Product < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :name, :price, :description ],
                              using: {
                                tsearch: { prefix: true }
                              }
  belongs_to :user
  has_many :sales, dependent: :destroy
  has_one_attached :photo

  validates :name, :price, :description, presence: true
end
