class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :reviewer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
