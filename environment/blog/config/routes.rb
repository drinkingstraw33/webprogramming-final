Rails.application.routes.draw do
  root 'main#entrance'
  
  get 'main/entrance'
  
  resources :lightfoods
  
  resources :heavyfoods
  
  resources :takeoutfoods

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
