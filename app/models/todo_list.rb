class TodoList < ApplicationRecord
  # TODO add validations
  # TODO add unit and controller tests
  # bi-directional association
  has_many :todo_items
  accepts_nested_attributes_for :todo_items
  validates_presence_of :title, :todo_items
  # validates_associated :todo_items
end
