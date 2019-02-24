Rails.application.routes.draw do
  get 'meters' => 'meters#index'
  get 'meters/new' => 'meters#new'
end
