Rails.application.routes.draw do
  root to: 'pages#home'
  resources :artists, only: [:index, :show]
  get :about, to: "pages#about"
  get :contact, to: "pages#contact"
end
