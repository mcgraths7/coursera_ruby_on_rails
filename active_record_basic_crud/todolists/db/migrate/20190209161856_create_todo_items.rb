class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :title
      t.string :description
      t.boolean{default :completed
      t.string :false}

      t.timestamps null: false
    end
  end
end
