class Business < ApplicationRecord
    validates :name, :address, :city, :state, :b_zip_code, presence: true
    validates :phone_num, :price_range, presence: true 
    validates :longitude, :latitude, presence: true
    validates :phone_num, uniqueness: true
<<<<<<< HEAD
    #has_many_attached :photos
=======
    has_many_attached :photos
>>>>>>> businesses

    # has_many :reviews,
    #     primary_key: :id,
    #     foreign_key: :review_id,
    #     class_name: :Review 

    # has_many :schedules,
    #     primary_key: :id,
    #     foreign_key: :schedule_id,
    #     class_name: :Schedule
end
