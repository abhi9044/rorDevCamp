Rails.application.routes.draw do
  devise_for :users, path:'',path_names:{sign_in: 'login',sign_out: 'logout',sign_up: 'register'}
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
