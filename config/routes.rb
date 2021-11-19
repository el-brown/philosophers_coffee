Rails.application.routes.draw do
  root "philos#index"
  #this will make basic routes for you
  # for a has_many, you need to nest your resources
  # add coffees controller

  resources :philos do
    resources :coffees 
  end
end
