class Review < ApplicationRecord 
    validates :rating, :message, :user_id, :business_id, presence: true 

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User 

    belongs_to :business,
        primary_key: :id,
        foreign_key: :business_id,
        class_name: :Business 
end