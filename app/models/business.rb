class Business < ApplicationRecord
    validates :name, :address, :city, :state, :b_zip_code, presence: true
    validates :open, :close, :phone_num, :price_range, presence: true 
    validates :longitude, :latitude, presence: true
    validates :phone_num, uniqueness: true
    has_one_attached :photo
end
