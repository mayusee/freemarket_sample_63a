Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :tops,only: :index 
  resources :sign_ups,only: :index
  resources :items do
    resources :trades , only: [:index,:new,:create,:show,:update] do
      collection do
        get 'done', to: 'trades#done'
      end
    end
  end
  resources :users , only: :show do
    resources :creditcards, only: [:new, :show, :destroy] do
      collection do
        post 'pay', to: 'creditcards#pay'
        post 'show', to: 'creditcards#show'
      end
    end
    resources :address, only: [:new, :edit, :update]
  end
end
