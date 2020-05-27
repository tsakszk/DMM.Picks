Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root 'public/users#top'
  get 'list', to: 'public/favorietes#list'
  get 'follows', to: 'public/favorietes#follows'
  get 'followers', to: 'public/favorietes#followers'

  namespace :public do
    resources :abouts, only: [:create, :new]
    resources :articles, only: [:index, :show, :update, :create, :edit, :new]
    resources :favorietes, only: [:create, :destroy, :index]
    resources :picks, only: [:show]
    resources :users, only: [:index, :update, :edit, :destroy, :create]
  end

  get 'top', to: 'admin/users#top'
  namespace :admin do
    resources :abouts, only: [:index, :show, :update]
    resources :articles, only: [:index, :show, :update, :create, :edit, :new]
    resources :categorys, only: [:index, :update, :create, :edit]
    resources :humburgers, only: [:index, :update, :create, :edit]
    resources :users, only: [:index, :update, :edit]
  end

end
