class RestaurantsController < ApplicationController
  
  private
    def restaurant_params
      params.require(:restaurant).permit(:id,
                                         :name,
                                         :city,
                                         :state,
                                         :created_at,
                                         :updated_at)
    end
end
