Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :tops,only: :index 
  resources :sign_ups,only: :index
  resources :users , only: :show do
    # 出品機能実装されるまでの仮置き
    resources :items, only: [:index, :new, :show] do
      resources :trades , only: [:new, :create]
    end

    resources :creditcards, only: [:new, :show] do
      collection do
        post 'pay', to: 'creditcards#pay'
        post 'delete', to: 'creditcards#delete'
      end
    end
  end

end
