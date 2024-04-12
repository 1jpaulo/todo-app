class TodoListsController < ApplicationController
  def index
    todo_lists_mock_object = [
      {
        id: 1,
        title: 'this is the first list',
        items: [
          {
            id: 1,
            text: 'stuff',
            checked: true
          },
          {
            id: 2,
            text: 'stuff 1',
            checked: false
          },
        ]
      },
      {
        id: 2,
        title: 'this is the second list',
        items: [
          {
            id: 1,
            text: 'stuff 1',
            checked: false
          },
          {
            id: 2,
            text: 'stuff 2',
            checked: true
          },
        ]
      }
    ]
    @todo_lists = todo_lists_mock_object
  end
end
