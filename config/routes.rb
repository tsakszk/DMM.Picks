Rails.application.routes.draw do

  devise_for :users
  # devise_for :users　#deviseを使用する際にURLとしてusersを含むことを示す。どのようなルーティングになるのか、rails routesを実行して確認
  # root 'public/users#index'

end
