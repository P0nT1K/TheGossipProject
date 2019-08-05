class PrivateMessage < ApplicationRecord
    belongs_to :sender, class_name: "User"
    has_many :jointure_messages
    has_many :recipients, class_name: "User", through: :jointure_messages
end
