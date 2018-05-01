Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "item#market"
  get 'auth/user_control', to: "auth#user_control", as: :auth
  get 'auth/sell', to: "auth#sell_view", as: :sell_view
  post 'auth/sell', to: "auth#sell_create", as: "sell_create"
  delete 'item/market', to: "item#sell_delete", as: :sell_delete
  get 'item/market', to: "item#market", as: :item

resources :items
end
