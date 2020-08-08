Rails.application.routes.draw do
<<<<<<< HEAD
  get 'user/index'
  get 'user/new'
  get 'user/create'
  get 'user/edit'
  get 'user/update'
  get 'user/show'
  get 'user/destroy'
#   get 'user/index'
#   get 'user/new'
#   get 'user/create'
#   get 'user/edit'
#   get 'user/update'
#   get 'user/show'
#   get 'user/destroy'
=======
  get 'comments/index'
  get 'comments/create'
  get 'comments/new'
  get 'comments/update'
  get 'comments/destroy'
  get 'comments/edit'
  get 'comments/show'
>>>>>>> added comments to question
  # get 'questions/index'
  # get 'questions/new'
  # get 'questions/create'
  # get 'questions/edit'
  # get 'questions/update'
  # get 'questions/show'
  # get 'questions/destroy'
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
    resources :comments
  end

  root 'questions#index'

end


