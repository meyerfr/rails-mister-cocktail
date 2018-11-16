Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:create, :destroy]
  end
  resources :ingredients, only: [:index]
end
