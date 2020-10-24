class TodosController < ApplicationController
  
      # new アクションを使う
    def new
      #Todoモデルのインスタンスを生成する
      @todo = Todo.new
    end
    
    def create
      #@todoのインスタンスを作成しparamsで取得したものを＠todoに代入する。
      @todo = Todo.new(params.require(:todo).permit(:time, :place, :todo, :memo))
      if @todo.save
        #@todoの中の物をsaveする.
        #リダイレクト先にメッセージを送る
         #登録できたら、todosにアクセスする
        redirect_to controller: :todos, action: :index
      else
        #登録できなかったら、newにいく。
        flash.now[:danger] = '登録失敗です'
        render :new
      end
    end
    
    def index
      #Todoモデルから全件を取り出して@todo(インスタンス変数)に代入する。
      @todos = Todo.all
    end
    
    def edit
      #paramsからtodoのidを取り出す
      todo_id = params[:id]
      #Todoのレコードを取り出す
      @todo = Todo.find(todo_id)
    end
    
    def update
      @todo = Todo.find(params[:id])
      @todo.update(params.require(:todo).permit(:time, :place, :todo, :memo))
      redirect_to tops_path
    end
    
    def destroy
      todo = Todo.find_by(params[:id])
      todo.destroy
      redirect_to tops_path
    end
end

