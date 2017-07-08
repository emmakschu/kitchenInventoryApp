Rails.application.routes.draw do
  root 'welcome#index'
  
  get '/foodItems' => 'food_items#index'
  resources :food_items
  resources :unit_conversions
  resources :restaurants

end
