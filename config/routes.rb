Rails.application.routes.draw do
  root to: 'pages#home'
  get :artist, to: "pages#artist"
  get :about, to: "pages#about"
  get :contact, to: "pages#contact"
end
