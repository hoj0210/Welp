class Schedule < ApplicationRecord 
    validates :business_id, presence: true 

    belongs_to :business,
        primary_key: :id,
        foreign_key: :business_id,
        class_name: :Business 
end 