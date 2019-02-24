Rails.application.routes.draw do
  Rails.application.routes.draw do
    root  'meters#index'
  end
  get 'meters' => 'meters#index'
  get 'meters/new' => 'meters#new'
  post 'meters' => 'meters#create'
end
