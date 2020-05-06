Rails.application.routes.draw do
  root  'home#index'
  get   'home/index'    => 'home#index'
  post   'home/inquiry'  => 'home#inquiry'

  get   'inquiry'         => 'inquiry#index'     # 入力画面
  post  'inquiry/inquiry'  => 'inquiry#inquiry'    # 送信完了画面
end