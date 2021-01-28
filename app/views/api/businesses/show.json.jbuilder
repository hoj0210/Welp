# json.partial! 'api/businesses/business', business: @business

    json.partial! 'api/businesses/business', business: @business
    json.categories do 
        json.array! @business.categories do |category|
            json.extract! category, :category
        end
    end
    json.schedules do 
        json.array! @business.schedules do |schedule|
            json.extract! schedule, :open, :close, :day
        end
    end
# json.extract! @business,
#             :id,
#             :name,
#             :address,
#             :city,
#             :state,
#             :b_zip_code,
#             :phone_num,
#             :website,
#             :price_range,
#             :latitude,
#             :longitude
#             @business.categories.id 

json.photoUrls @business.photos.map {|file| url_for(file) }
