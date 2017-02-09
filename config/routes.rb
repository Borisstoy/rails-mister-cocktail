Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:create]
  end
  # just want to access a dose, not the cocktail dose
  resources :doses, only: [:destroy]

  resources :ingredients
end
