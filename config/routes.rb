Rails.application.routes.draw do
  root 'welcome#index'
  
  get '/items' => 'food_items#index'

end
