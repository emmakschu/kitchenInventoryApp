Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :food_items
  resources :restaurants

end
