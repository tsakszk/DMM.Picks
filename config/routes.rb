Rails.application.routes.draw do

  namespace :admins do
    get 'articles/index'
    get 'articles/create'
    get 'articles/edit'
    get 'articles/update'
    get 'articles/show'
    get 'articles/new'
  end
  namespace :admins do
    get 'categorys/index'
    get 'categorys/create'
    get 'categorys/edit'
    get 'categorys/update'
  end

  namespace :admins do
    get 'hamburgers/index'
    get 'hamburgers/create'
    get 'hamburgers/edit'
    get 'hamburgers/update'
  end
  namespace :admins do
    get 'abouts/top'
    get 'abouts/index'
    get 'abouts/show'
    get 'abouts/update'
  end
  namespace :admins do
    get 'users/top'
    get 'users/index'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'users/top'
    get 'users/index'
    get 'users/edit'
    get 'users/update'
  end
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

end
