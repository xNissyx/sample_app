Rails.application.routes.draw do

  resources :lists

  get '/top' => 'homes#top'

end
