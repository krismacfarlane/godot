Rails.application.routes.draw do

root "welcomes#index"

resources :authors, only: [:index, :show]
resources :books, only: [:index, :show]
resources :characters, only: [:index, :show]

end
