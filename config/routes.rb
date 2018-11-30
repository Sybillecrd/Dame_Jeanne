Rails.application.routes.draw do
  root to: 'artists#index'
  resources :artists, only: [:index, :show]
  get :about, to: "pages#about"
  get :contact, to: "pages#contact"
end
