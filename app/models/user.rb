require 'bcrypt'

class User < ApplicationRecord
    attr_accessor :password
    validates :first_name, 
    presence: true
    validates :last_name,
    presence: true
    validates :email, presence: true #uniqueness: true, #format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    belongs_to :city, optional: true
    has_many :gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :jointure_messages
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "JointureMessage"
    has_many :likes
    has_many :comments
    validates :password, presence: true, length: {minimum: 6}
    has_secure_password
end
