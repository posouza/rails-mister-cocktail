Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:edit, :update, :destroy]
  root "cocktails#index"
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
