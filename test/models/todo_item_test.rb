require "test_helper"

class TodoItemTest < ActiveSupport::TestCase
  test "should not save without text" do
    item = TodoItem.new(todo_list: TodoList.new)
    assert_not item.save
  end
end
