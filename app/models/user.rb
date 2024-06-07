class User < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :name, :price, :description ],
                  associated_against: {
                              user: [ :name ]
                              },
                              using: {
                                tsearch: { prefix: true }
                              }
                              
  has_many :sales
  has_many :products

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :address, presence: true
end
