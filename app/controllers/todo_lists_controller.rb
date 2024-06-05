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

  def new
    @todo_list = TodoList.new
    # Needed to build a new record so nested attributes fields_for form will render the fields
    @todo_list.todo_items.build
  end

  def create
    # TODO add error and success messages
    TodoList.create(create_params)

    # returns back to new page with appropriate message
    flash[:alert] = 'All good.'
    redirect_back(fallback_location: new_todo_list_path)
  end

  def edit
    # TODO create action
  end

  def update
    # TODO create action
  end

  def show
    # TODO create action
  end

  private

  def create_params
    params.require(:todo_list).permit(:title, todo_items_attributes: %i[text])
  end
end
