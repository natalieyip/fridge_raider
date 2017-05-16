Rails.application.routes.draw do
  
 root 'welcome#index'
 resources :recipes
 resources :recipeingredients
 resources :ingredients 

end
