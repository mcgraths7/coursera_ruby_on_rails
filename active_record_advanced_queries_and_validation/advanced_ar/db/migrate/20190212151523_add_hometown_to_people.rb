class AddHometownToPeople < ActiveRecord::Migration
  def change
    add_column :people, :hometown, :string
    add_column :people, :number_of_dogs, :integer
  end
end
