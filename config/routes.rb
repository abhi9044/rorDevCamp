Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :portfolios
  get "about", to: "pages#about"
  get 'pages/contact'
  resources :blogs do
  	member do
      get :toggle_status
  	end
  end

  root to:"pages#home"
end
