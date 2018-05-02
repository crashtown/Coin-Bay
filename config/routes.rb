Rails.application.routes.draw do
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"

 get 'ucps/dashboard', to: "ucps#dashboard", as: :ucps_dashboard
 get 'ucps/messages', to: "ucps#messages", as: :ucps_messages
 get 'ucps/view_listed', to: "ucps#view_listed", as: :ucps_view_listed
 post 'ucps/dashboard', to: "items#current_btc_price", as: :current_btc_price
end
