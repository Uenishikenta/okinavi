Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'login#index'
  get 'top_page/index' => 'top_page#index'

  resources :hotels do
    resources :likes, only: [:create, :destroy]

    resources :comments, only: [:create]
  end

end
