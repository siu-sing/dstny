Rails.application.routes.draw do
  # get 'questions/index'
  # get 'questions/new'
  # get 'questions/create'
  # get 'questions/edit'
  # get 'questions/update'
  # get 'questions/show'
  # get 'questions/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :questions do
    resources :comments
  end

  root 'questions#index'

end


