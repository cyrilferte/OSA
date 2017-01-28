Rails.application.routes.draw do
  resources :days
  resources :events
  devise_for :users
  root to: 'pages#home'
  get "/calendar" => "pages#calendar"
  get '/days/:date', to: "days#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
