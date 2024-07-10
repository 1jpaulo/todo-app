class TodoItem < ApplicationRecord
  belongs_to :todo_list
  validates :text, presence: true
end
