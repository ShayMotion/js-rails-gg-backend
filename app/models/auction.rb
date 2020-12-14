class Auction < ApplicationRecord
    belongs_to :user
    has_many :guitars
    has_many :brands, through: :guitars
    has_many :models 
    has_many :locations, through: :users

    validates :title, :user, presence: true 
end