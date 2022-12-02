Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users


  resources :clinics, only: [ :index, :new, :create ]


  resources :exams do
    resources :timeslots, only: [ :new, :create, :edit, :update ]
  end

  resources :timeslots, only: [] do
    resources :bookings, only: [ :new, :create, :show ]
  end

  resources :bookings, only: [ :edit, :update, :destroy ] do
    resources :results, only: [ :create ]
  end

  get "dashboard", to: "users#dashboard", as: "dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
