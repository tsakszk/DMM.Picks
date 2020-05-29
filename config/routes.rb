Rails.application.routes.draw do
  devise_for :users#deviseを使用する際にURLとしてusersを含むことを示す。どのようなルーティングになるのか、rails routesを実行して確認
  resources :users

  root 'home#top'
  get 'home/about'

end
