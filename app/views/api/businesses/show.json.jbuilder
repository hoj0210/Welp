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
<<<<<<< HEAD
            :longitude
            #:reviews,

#json.photoUrls @business.photos.map {|file| url_for(file)}
=======
            :longitude,
            #:reviews,


json.photoUrls @business.photos.map {|file| url_for(file) }
>>>>>>> businesses
