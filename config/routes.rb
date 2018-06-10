Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  default_url_options :host => "localhost:8080"
  resources :users
end
