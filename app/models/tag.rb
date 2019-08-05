class Tag < ApplicationRecord
    has_many :jointure_gossips
    has_many :gossips, through: :jointure_gossips
end
