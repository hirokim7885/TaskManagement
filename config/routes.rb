Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
  end

  namespace :tasks do
    resources :today, only: %i(index)
    resources :business, only: %i(index)
    resources :privates, only: %i(index)
    resources :complete, only: %i(index)
    resources :tomorrow, only: %i(index)
  end

  resources :tasks
  resources :users

  root to: 'tasks#index'

end
