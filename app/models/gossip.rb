class Gossip < ApplicationRecord
    validates :title,
    presence: true,
    length: { in: 3..14 }
    validates :content,
    presence: true
    belongs_to :user
    has_many :comments, :as => :commentable, dependent: :destroy
    has_many :jointure_gossips 
    has_many :tags, through: :jointure_gossips
    has_many :likes, :as => :likeable, dependent: :destroy
  end
