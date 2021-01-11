class Guitar < ApplicationRecord
    belongs_to :auction

    validates :model, :brand, :year, :price, presence: true
 end
