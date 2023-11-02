Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'skis#top'
  get 'skis/top' => 'skis#top'
  resources :skis do
  resources :comments, only: [:create]
  end
end
