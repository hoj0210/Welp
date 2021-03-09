class Api::BusinessesController < ApplicationController

    def show 
        @business = Business.with_attached_photos.find_by(id: params[:id])
    end

    def index 
        if params[:query]
            @businesses = Business.all.select{|b| b.name.downcase.include?(params[:query].downcase) || b.categories.any?{|c| c.category.downcase.include?(params[:query].downcase)}}
        else
            @businesses = Business.all
        end
        render :index
    end

    def business_params
        params.require(:business).permit(
            :name,
            :address,
            :city,
            :state,
            :b_zip_code,
            :phone_num,
            :price_range,
            :longitude,
            :latitude,
            photos: []
        )
    end
end
