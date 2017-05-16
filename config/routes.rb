Rails.application.routes.draw do
  
 root 'welcome#index'
 resources :recipe
 resources :recipeingredients
end
