Rails.application.routes.draw do
  get 'artists/name'
  get 'artists/job'
  get 'artists/avatar'
  root to: 'pages#home'
  get :artist, to: "pages#artist"
  get :about, to: "pages#about"
  get :contact, to: "pages#contact"
end
