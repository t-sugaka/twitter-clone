Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  resources :posts
end
