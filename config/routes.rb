Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "item#market"
  get 'auth/user_control', to: "auth#user_control", as: :auth
  get 'item/market', to: "item#market", as: :item

end
