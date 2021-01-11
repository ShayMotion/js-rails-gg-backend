class Auction < ApplicationRecord
    has_many :guitars, dependent: :destroy  
    validates :title, presence: true  
end