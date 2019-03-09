Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome' => 'pages#home'
  get 'routes' => 'pages#route_finder'
  get 'search' => 'pages#search'
end
