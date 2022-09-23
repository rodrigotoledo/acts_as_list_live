class Todo < ApplicationRecord
  acts_as_list
  def self.default_scope
    order(:position)
  end
  broadcasts_to ->(todo) { :todo_stream }
  after_commit :update_todos

  def update_todos
    broadcast_update_to(:todos_stream, target: :todos, partial: "todos/todos", locals: {todos: Todo.all})
  end
end
