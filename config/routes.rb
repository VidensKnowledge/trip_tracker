Rails.application.routes.draw do
  get 'locations/index'
  get 'locations/show'
  get 'locations/edit'
  get 'locations/new'
  get 'addresses/index'
  get 'addresses/show'
  get 'addresses/new'
  get 'trips/index'
  get 'trips/show'
  get 'trips/new'
  get 'trips/edit'
  devise_for :users
  resources :trips do
    resources :locations do
      resources :Addresses
    end
  end

  ## Todo add model resources later linking trips, locations, addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
