class TodoListsController < ApplicationController
  def index
    todo_lists_mock_object = [
      {
        id: 1,
        title: 'this is the first list',
        item: {
          id: 1,
          text: 'stuff',
          checked: true
        }
      },
      {
        id: 2,
        title: 'this is the second list',
        item: {
          id: 1,
          text: 'stuff 1',
          checked: false
        }
      }
    ]
    @todo_lists = todo_lists_mock_object
  end
end
