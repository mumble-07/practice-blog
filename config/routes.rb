Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ########========CONVERT TOU RESOURCES start===============########
  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new'
  # get '/articles/name/:name' => 'articles#find_name'
  # get '/articles/:id' => 'articles#show', as: 'article_show'
  # delete '/articles/:id' => 'articles#delete', as: 'article_delete'
  # get '/articles/:id/edit' => 'articles#edit', as: 'article_edit'
  # put '/articles/:id' => 'articles#update', as: 'article_update'
  # post '/articles' => 'articles#create', as: 'article_create'
  ########========CONVERT TOU RESOURCES end===============########

  resources :articles do
    resources :comments
  end
  

  # get '/users' => 'users#index'
  # get '/users/new' => 'users#new', as: 'new_user'
  # post '/users' => 'users#create', as: 'create_user'
end



