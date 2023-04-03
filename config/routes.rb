Rails.application.routes.draw do
  
  get 'lists/new'
  post "lists" => "lists#create"
  
  get 'lists/index'
  
  # as:オプションは名前付きルーティング、この場合URLの記述はlist_pathとなる
  get "lists/:id" => "lists#show", as: "list"
  
  get "lists/:id/edit" => "lists#edit", as: "edit_list"
  # updateのHTTPメソッドはpatchなことに注意
  patch "lists/:id" => "lists#update", as: "update_list"
  
  get '/top' => 'homes#top'
  
end
