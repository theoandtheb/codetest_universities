Rails.application.routes.draw do
  resources :universities, only: [:index]
  root :to => 'universities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
