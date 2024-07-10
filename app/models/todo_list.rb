class TodoList < ApplicationRecord
  # bi-directional association
  has_many :todo_items
  accepts_nested_attributes_for :todo_items
  validates_presence_of :title, :todo_items
  # in a real app there would be no need for title to be unique
  validates :title, uniqueness: true
  # this will validate that the specified associations are also valid
  # this is important for associations that are accepted as nested attributes
  # validates_associated :todo_items
end
