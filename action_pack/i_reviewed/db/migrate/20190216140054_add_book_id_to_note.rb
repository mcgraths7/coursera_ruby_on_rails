class AddBookIdToNote < ActiveRecord::Migration
  def change
    add_reference :notes, :book, index: true, foreign_key: true
  end
end
