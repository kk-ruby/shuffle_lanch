Rails.application.routes.draw do
  root 'home#top'
  
  get 'workshop/shuffle' => 'workshop#shuffle'
  get 'workshop/shuffleafter' => 'workshop#shuffleafter'
  
  get 'home/shuffle' => 'home#shuffle'
  get 'home/confirm' => 'home#confirm'
  get 'home/shuffleafter' => 'home#shuffleafter'
  resources :emplos
  
end
