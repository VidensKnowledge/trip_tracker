Rails.application.routes.draw do
  devise_for :users

  ## Todo add model resources later linking trips, locations, addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
