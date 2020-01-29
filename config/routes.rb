Rails.application.routes.draw do
  get 'home/shuffle'
  resources :emplos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
