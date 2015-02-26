Rails.application.routes.draw do

  root "welcome#index"

  get 'quiz/new' => 'quiz#new'

end
