Rails.application.routes.draw do
  scope '(:locale)', locale: /en/ do
    root to: 'artists#index'
    resources :artists, only: [:index, :show]
    resources :posts, only: [:index, :show]
    get :about, to: "pages#about"
    get :shops, to: "pages#shops"
    get :contact, to: "pages#contact"
    get :legalpage, to: 'pages#legalpage'
  end
end
