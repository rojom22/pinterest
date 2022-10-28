Rails.application.routes.draw do
  resources :pins
  devise_for :users
  root 'home#index'

  get ':username' => 'users#show' , as: 'user'

end
