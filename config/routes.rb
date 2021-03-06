Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "boards#index"
  resources :boards do
    collection do
      get 'search'
    end
  end
  resources :comments, only: [:create]
end
