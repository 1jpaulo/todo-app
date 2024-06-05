class TodoItem < ApplicationRecord
  # TODO add validations
  # TODO add unit and controller tests
  belongs_to :todo_list
end
