require_relative 'task_view'
require_relative 'task'

class TasksController
  def initialize(task_repository)
    @task_repository = task_repository
    @view = TaskView.new
  end

  def list
    tasks = @task_repository.all
    @view.display_all(tasks)
  end

  def destroy
    list
    index = @view.ask_index
    @task_repository.delete(index)
  end

  def mark_as_done
    list
    index = @view.ask_index
    task = @task_repository.find(index)
    task.mark_as_done!
  end

  def create
    description = @view.ask_description
    task = Task.new(description)
    @task_repository.add(task)
  end
end
