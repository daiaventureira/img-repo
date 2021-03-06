Rails.application.routes.draw do
  get "/", to: "main#index"

  get 'display_images/index'
  get 'display_images/show'

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"


  delete "logout", to: "sessions#destroy"


  resources :products do 
    member do
      delete :delete_image
    end
  end

end
