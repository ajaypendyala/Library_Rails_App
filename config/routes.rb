Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings
  get "book_new" => "bookings#new", as: "book_new"
  resources :rooms

  get "booking_history" => "users#booking_history", as: "booking_history"

  get "invite" => "bookings#invite", as: "invite"
  root 'users#booking_history'

end
