class TodoListsController < ApplicationController
  def index
    @todo_lists = TodoList.all
  end

  def show
    # TODO: create action
  end

  def new
    @todo_list = TodoList.new
    # Needed to build a new record so nested attributes fields_for form will render the fields
    @todo_list.todo_items.new
  end

  def create
    todo_list = TodoList.create(create_params)
    # returns back to new page with appropriate message
    flash[:alert] = todo_list.errors.full_messages
    flash[:success] = 'List created successfully.' unless flash[:alert].any?
    redirect_back(fallback_location: new_todo_list_path)
  end

  def edit
    # TODO: create action
  end

  def update
    # TODO: create action
  end

  private

  def create_params
    params.require(:todo_list).permit(:title, todo_items_attributes: %i[text])
  end
end
