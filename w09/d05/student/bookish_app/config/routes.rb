Rails.application.routes.draw do

root "welcomes#index"

resources :authors
resources :books
resources :characters

end
