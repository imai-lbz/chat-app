Rails.application.routes.draw do
  devise_for :users
  # 単体ページのルーティング（about/contactなど）
  get 'messages/index'
  get 'rooms/index'
  # トップページ指定
  root to: "rooms#index"
  # CRUDをまとめてルーティング
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
