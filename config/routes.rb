Rails.application.routes.draw do
  get "/", to: "products#index"
  get 'display_images/index'
  get 'display_images/show'
  delete "display_images/delete", to: "display_images#destroy"
    # put '/signup' => 'registrations#update',  :defaults => { :format => 'json' }
  
  resources :products do 
    member do
      delete :delete_image
    end
  end

end
