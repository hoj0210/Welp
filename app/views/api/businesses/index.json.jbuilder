@businesses.each do |business|
    json.set! business.id do 
        json.partial! 'business', business: business
        json.schedules do 
            json.array! business.schedules do |schedule|
                json.extract! schedule, :open, :close, :day, :id
            end
        end
        json.reviews do 
            json.array! business.reviews do |review|
                json.extract! review, :message, :rating, :id
            end
        end
        json.photoUrls business.photos.map {|file| url_for(file) }
    end
end