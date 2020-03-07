Rails.application.routes.draw do
  devise_for :users

  root "tops#index"
  resources :tops,only: :index 
  resources :sign_ups, only: :create do
    collection do
      get 'index'
      get 'step1'
      get 'step2'
      get 'done'
    end
  end
  resources :users , only: :show do
    # 出品機能実装されるまでの仮置き
    resources :items, only: [:index, :new, :create, :show] do
      resources :trades , only: [:new, :create]
    end

    resources :creditcards, only: [:new, :show, :destroy] do
      collection do
        post 'pay', to: 'creditcards#pay'
        post 'show', to: 'creditcards#show'
      end
    end
  end

end
