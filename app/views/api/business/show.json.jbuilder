#json.partial! 'api/businesses/business', business: @business

json.extract! @business,
            :id,
            :name,
            :address,
            :city,
            :state,
            :b_zip_code,
            :phone_num,
            :website,
            :price_range,
            :latitude,
            :longitude
            #:reviews,

json.photoUrls @busines.photos.map {|file| url_for(file)}