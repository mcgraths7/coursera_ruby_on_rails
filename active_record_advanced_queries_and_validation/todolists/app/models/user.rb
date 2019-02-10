class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  has_many :todo_lists, dependent: :destroy
  has_many :todo_items, through: :todo_lists, source: :todo_items

  validates :username, presence: true

  def get_completed_count
    completed_count = 0
    self.todo_lists.each do |list|
      list.todo_items.each do |item|
        item.completed == true ? completed_count += 1 : completed_count
      end
    end
    completed_count
  end

end
