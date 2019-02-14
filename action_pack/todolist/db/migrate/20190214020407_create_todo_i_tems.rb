class CreateTodoITems < ActiveRecord::Migration
  def change
    create_table :todo_i_tems do |t|
      t.date :due_date
      t.string :title
      t.text :description
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
