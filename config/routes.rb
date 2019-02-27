Rails.application.routes.draw do
  root to: 'artists#index'
  resources :artists, only: [:index, :show]
  get :about, to: "pages#about"
  get :shops, to: "pages#shops"
  get :press, to: "pages#press"
  get :contact, to: "pages#contact"
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
end
