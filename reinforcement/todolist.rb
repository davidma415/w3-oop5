require_relative 'task'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(task)
    @todo_list << task
  end

  def show
    return @todo_list
  end
end
