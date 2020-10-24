Rails.application.routes.draw do
  root to: 'todos#new'

  # users
  # users登録、画面取得するルーティング。
  get '/users/new', to: 'users#new'
  # user の登録の保存
  post '/users', to: 'users#create'
  

  # todos
  # Todo の登録画面を取得するルーティング。
  get '/todos/new', to: 'todos#new'
  
  # Todo の投稿を登録するルーティング。
  post '/todos', to: 'todos#create'
  
  # todo 投稿一覧を画面に表示するルーティング
  get '/todos', to: 'todos#index', as: "tops"
  
  # edit の post 先の指定
  
  # todo 投稿の内容を変更する
  # edit 画面の取得
  get '/todos/:id/edit', to: 'todos#edit'
  # 変更した後の更新
  patch "/todos/:id/edit", to: "todos#update", as: :todo

  # idの消去
  delete "/todos/:id", to: "todos#destroy"
 

  end
