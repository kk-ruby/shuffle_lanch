Rails.application.routes.draw do
  root 'home#top'
  get 'home/shuffle' => 'home#shuffle'
  get 'home/confirm' => 'home#confirm'
  resources :emplos
  
end
