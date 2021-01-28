class Category < ApplicationRecord
    validates :category, presence: true 

    has_many :businesses_categories,
        primary_key: :id,
        foreign_key: :category_id,
        class_name: :BusinessesCategory 

    has_many :businesses,
        through: :businesses_categories,
        source: :business 
end