@businesses.each do |business|
    json.set! business.id do 
        json.partial! 'business', business: business
        json.reviews do 
            json.array! business.reviews do |review|
                json.extract! review, :message, :rating, :id
            end
        end
        json.photoUrls business.photos.map {|file| url_for(file) }
    end
end