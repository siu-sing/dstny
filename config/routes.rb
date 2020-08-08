Rails.application.routes.draw do
 
  get 'comments/index'
  get 'comments/create'
  get 'comments/new'
  get 'comments/update'
  get 'comments/destroy'
  get 'comments/edit'
  get 'comments/show'
  # get 'options/index'
  # get 'options/show'
  # get 'options/new'
  # get 'options/create'
  # get 'options/edit'
  # get 'options/update'
  # get 'options/destroy'
  # get 'questions/index'
  # get 'questions/new'
  # get 'questions/create'
  # get 'questions/edit'
  # get 'questions/update'
  # get 'questions/show'
  # get 'questions/destroy'

  post 'options/addvote'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  resources :users

  resources :users do
    resources :questions
  end

  resources :users do
    resources :comments
  end
  
  resources :questions do
    resources :options
  end

  # post '/questions/:id', to: 'questions#updateVote'

  resources :questions do
    resources :comments
  end

  


  root 'questions#index'

end


