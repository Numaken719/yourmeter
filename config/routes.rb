Rails.application.routes.draw do
  devise_for :users
  root  'meters#index'
  get 'meters' => 'meters#index'
  get 'meters/new' => 'meters#new'
  post 'meters' => 'meters#create'
  # delete 'meters/:id' => 'meters#destroy'
  get 'users/:id' => 'users#show'
  get 'meters/:id' => 'meters#show'
end
