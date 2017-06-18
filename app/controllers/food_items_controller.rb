class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.all
  end
  
  def show
    @food_item = FoodItem.find(params[:id])
  end
  
  def new
    @food_item = FoodItem.new
  end
  
  def create
    @food_item = FoodItem.new(food_item_params)
    
    if @food_item.save
      redirect_to @food_item
     else
       render 'new'
    end
  end
  
  def edit
    @food_item = FoodItem.find(params[:id])
  end
  
  def update
    @food_item = FoodItem.find(params[:id])
    
    if @food_item.update(food_item_params)
      redirect_to @food_item
     else
       render 'edit'
    end
  end
  
  
  private
    def food_item_params
      params.require(:food_item).permit(:id,
                                        :restaurant,
                                        :name,
                                        :orderNo,
                                        :unitPrice,
                                        :unitType,
                                        :unitSize,
                                        :pricePerUnit,
                                        :locations,
                                        :created_at,
                                        :updated_at)
    end
end
