Rails.application.routes.draw do
  get "/", to: "products#index"
  get 'display_images/index'
  get 'display_images/show'
  resources :products

end
