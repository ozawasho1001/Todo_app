class CreateTodoFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_folders do |t|
      t.timestamps
    end
  end
end
