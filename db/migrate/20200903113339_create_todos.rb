class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :time
      t.string :place
      t.string :todo
      t.string :memo
      t.timestamps
    end
  end
end
