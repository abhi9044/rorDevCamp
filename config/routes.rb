Rails.application.routes.draw do
  resources :portfolios
  get "about", to: "pages#about"
  get 'pages/contact'
  resources :blogs
  root to:"pages#home"
end
