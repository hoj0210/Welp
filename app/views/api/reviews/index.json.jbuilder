@reviews.each do |review|
    json.set! review.id do 
        json.extract! review, 
            :id,
            :message,
            :rating,
            :business_id,
            :user_id
    end
end