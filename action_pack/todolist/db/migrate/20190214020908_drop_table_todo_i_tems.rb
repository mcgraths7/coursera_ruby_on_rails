class DropTableTodoITems < ActiveRecord::Migration
  def change
    drop_table :todo_i_tems
  end
end
