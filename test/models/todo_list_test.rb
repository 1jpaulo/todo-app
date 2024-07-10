require "test_helper"

class TodoListTest < ActiveSupport::TestCase
  setup do
    @todo_item = todo_items(:one)
  end

  test "should not save without TodoItem" do
    todo_list = TodoList.new(title: "test")
    assert_not todo_list.save
  end

  test "should not save without title" do
    todo_list = TodoList.new(todo_items: [@todo_item])
    assert_not todo_list.save
  end

  test "should not save duplicated title" do
    TodoList.create(title: "testing", todo_items: [@todo_item])
    todo_list = TodoList.create(title: "testing", todo_items: [@todo_item])
    assert_equal "Title has already been taken", todo_list.errors.full_messages_for(:title).first
  end
end
